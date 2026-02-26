import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/Views/all_products/riverpod/products_provider.dart';
import 'package:scube_task/src/presentation/shared/widgets/product_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      //here i'll update 
    });
    // Lazy loading when scrolling near bottom
    _scrollController.addListener(() {
      final state = ref.read(allProductsProvider);
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 200 &&
          !state.isLoading &&
          !state.hasReachedMax) {
        ref.read(allProductsProvider.notifier).fetchProducts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () => ref
              .read(allProductsProvider.notifier)
              .refreshProducts(currentTab: _tabController.index),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: AppColors.primary,
                  title: const Text("Scroll task"),
                  centerTitle: true,
                ),

                SliverAppBar(
                  backgroundColor: AppColors.primary,
                  toolbarHeight: 160,
            
                  flexibleSpace: const FlexibleSpaceBar(
                    background: _BannerOnly(),
                  ),
                ),

                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context,
                  ),
                  sliver: SliverAppBar(
                    pinned: true,
                    toolbarHeight: 0,

                    bottom: TabBar(
                      controller: _tabController,

                      tabs: [
                        Tab(text: "All"),
                        Tab(text: "Electronics"),
                        Tab(text: "Jewelery"),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [ProductsTab(), ProductsTab(), ProductsTab()],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductsTab extends ConsumerWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(allProductsProvider);

    return Builder(
      builder: (context) {
        return CustomScrollView(
          key: PageStorageKey('products'),
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),

            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ProductCard(state.products[index]),
                  childCount: state.products.length,
                ),
              ),
            ),

            if (state.isLoading)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _BannerOnly extends StatelessWidget {
  const _BannerOnly();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: AppColors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Find Your Favorite Products",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Search from thousands of amazing items at the best prices.",
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

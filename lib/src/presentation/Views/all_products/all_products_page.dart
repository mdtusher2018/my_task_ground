import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/Views/all_products/riverpod/products_provider.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';
import 'package:scube_task/src/presentation/shared/widgets/product_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.read(allProductsProvider.notifier).refreshProducts(),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            /// 🔹 Collapsible AppBar (title pinned)
            SliverAppBar(
              pinned: true,
              backgroundColor: AppColors.primary,
              surfaceTintColor: Colors.transparent,
              title: CommonText("Scroll task", size: 18, isBold: true),
              centerTitle: true,
              toolbarHeight: 60,
            ),

            /// 🔹 Banner with search (collapsible)
            SliverAppBar(
              backgroundColor: AppColors.primary,
              surfaceTintColor: Colors.transparent,
              pinned: false,
              automaticallyImplyLeading: false,
              expandedHeight: 160,
              flexibleSpace: FlexibleSpaceBar(
                background: _BannerOnly(),
              ),
            ),

            /// 🔹 Sticky TabBar
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverTabDelegate(
                TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: "All"),
                    Tab(text: "Electronics"),
                    Tab(text: "Jewelery"),
                  ],
                  indicatorColor: Colors.white,
                ),
              ),
            ),

            /// 🔹 TabBarView content inside SliverFillRemaining
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AllProductsSliver(),
                  AllProductsSliver(),
                  AllProductsSliver(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Sticky TabBar Delegate
class _SliverTabDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  _SliverTabDelegate(this.tabBar);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant _SliverTabDelegate oldDelegate) => true;
}

/// Collapsible Banner with text/search
class _BannerOnly extends StatelessWidget {
  const _BannerOnly();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.black,
      ),
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
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

/// Sliver Grid for Products
class AllProductsSliver extends ConsumerWidget {
  const AllProductsSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(allProductsProvider);

    if (state.isLoading && state.products.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return CustomScrollView(
    
   slivers: [
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
  }
}
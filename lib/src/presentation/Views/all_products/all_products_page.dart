import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/Views/all_products/riverpod/products_provider.dart';
import 'package:scube_task/src/presentation/shared/widgets/product_card.dart';

/// The main home page containing a banner, tab navigation, and product listings.
///
/// - Uses a [TabController] for switching between product categories.
/// - Supports pull-to-refresh and infinite scrolling.
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late TabController _tabController; // Controller for tab navigation
  final ScrollController _scrollController =
      ScrollController(); // Controller for infinite scroll

  @override
  void initState() {
    super.initState();

    // Initialize the tab controller with 3 tabs
    _tabController = TabController(length: 3, vsync: this);

    // Listen to tab changes
    _tabController.addListener(() {});

    // Listen to scroll events for infinite scroll
    _scrollController.addListener(() {
      final state = ref.read(allProductsProvider);

      // Fetch more products when reaching near the bottom
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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              // Top app bar
              SliverAppBar(
                pinned: true,
                backgroundColor: AppColors.primary,
                title: const Text("Scroll task"),
                centerTitle: true,
              ),
        
              // Banner section below the app bar
              SliverAppBar(
                backgroundColor: AppColors.primary,
                toolbarHeight: 160,
                flexibleSpace: const FlexibleSpaceBar(
                  background: _BannerOnly(),
                ),
              ),
        
              // Tab bar pinned below the banner
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: SliverAppBar(
                  pinned: true,
                  toolbarHeight: 0,
                  bottom: TabBar(
                    controller: _tabController,
        
                    tabs: const [
                      Tab(text: "All"),
                      Tab(text: "Electronics"),
                      Tab(text: "Jewelery"),
                    ],
                  ),
                ),
              ),
            ];
          },
        
          // The body contains tab views for each category
          body: TabBarView(
            controller: _tabController,
            children: [ProductsTab(index: 0,), ProductsTab(index: 1,), ProductsTab(index: 2,)],
          ),
        ),
      ),
    );
  }
}

/// Tab view displaying a grid of products.
///
/// Watches [allProductsProvider] for state changes.
class ProductsTab extends ConsumerWidget {
   ProductsTab({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(allProductsProvider);

    return Builder(
      builder: (context) {
        // Pull-to-refresh wrapper
        return RefreshIndicator(  onRefresh: () => ref
              .read(allProductsProvider.notifier)
              .refreshProducts(currentTab: index),
          child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            key: const PageStorageKey('products'), // Preserve scroll position
            slivers: [
              // Needed for NestedScrollView to properly handle overlaps
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
          
              // Product grid
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
          
              // Loading indicator at the bottom
              if (state.isLoading)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

/// Banner widget displayed at the top of the home page.
///
/// Contains a title and subtitle promoting the products.
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

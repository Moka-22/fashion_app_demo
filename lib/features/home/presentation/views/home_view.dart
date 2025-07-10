import 'package:fashion_app/core/di/services_locator.dart';
import 'package:fashion_app/features/home/presentation/controller/cubit/cubit/products_cubit.dart';
import 'package:fashion_app/features/home/presentation/widgets/home_header_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/products_item_widget.dart';
import 'package:fashion_app/features/home/presentation/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsCubit>()..fetchProducts(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeHeaderWidget(userName: userName),
                SliderWidget(),
                BlocBuilder<ProductsCubit, ProductsState>(
                  builder: (context, state) {
                    if (state is ProductsLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is ProductsLoaded) {
                      return ProductsItemsWidget(products: state.products);
                    } else if (state is ProductsError) {
                      return Center(child: Text(state.message));
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

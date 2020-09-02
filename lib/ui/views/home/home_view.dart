import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo/ui/views/home/home_viewmodel.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Text('All'),
                        Text('Completed'),
                        Text('Remaining'),
                      ],
                      labelColor: Colors.black,
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey[400],
                      labelPadding: EdgeInsets.all(16),
                      controller: _tabController,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: model.pages,
                        controller: _tabController,
                      ),
                    )
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: (context),
                      builder: (context) => model.addTodoPage);
                },
                child: Icon(Icons.add),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/features/datasource/user_datasource.dart';
import 'package:restaurant_booking_app/features/persentation/screen/home/bloc/user_list_bloc.dart';
import 'package:restaurant_booking_app/features/persentation/screen/home/bloc/user_list_event.dart';
import 'package:restaurant_booking_app/features/persentation/screen/home/bloc/user_list_state.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => UserListBloc(
          userRepository: UserRepository(
            apiUrl: 'https://reqres.in/api/users?page=2',
          ),
        )..add(const UserListEvent.fetchUserList()),
        child: BlocBuilder<UserListBloc, UserListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: Text('No data available'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (users) {
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 20),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  user.avatar,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${user.firstName} ${user.lastName}',
                                  style: greenTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: bold,
                                  ),
                                ),
                                Text(
                                  user.email,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (message) => Center(
                child: Text(
                  'Error: $message',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

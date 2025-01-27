import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/features/datasource/user_datasource.dart';
import 'package:restaurant_booking_app/features/models/user_list.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';
import 'bloc/userlist_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User List',
          style: whiteTextStyle.copyWith(
            fontSize: 28,
            fontWeight: black,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: BlocProvider(
        create: (context) => UserlistBloc(
          remoteDataSource: RemoteDataSource(baseUrl: 'https://reqres.in'),
        )..add(const UserlistEvent.fetchUserList()),
        child: BlocBuilder<UserlistBloc, UserlistState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const Center(child: Text('Welcome!')),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (data) => ListView.builder(
                itemCount: data.userlist.data.length,
                itemBuilder: (context, index) {
                  final user = data.userlist.data[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetail(user: user),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8),
                      height: 120,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(22),
                              image: DecorationImage(
                                image: NetworkImage(user.avatar),
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
                                style: blackTextStyle.copyWith(
                                  fontSize: 22,
                                  fontWeight: bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                user.email,
                                style: greenTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              error: (error) => Center(child: Text('Error: ${error.message}')),
            );
          },
        ),
      ),
    );
  }
}

class UserDetail extends StatelessWidget {
  final ListUser user;

  const UserDetail({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(user.avatar),
              ),
              const SizedBox(height: 20),
              Text(
                '${user.firstName} ${user.lastName}',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                user.email,
                style: greenTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

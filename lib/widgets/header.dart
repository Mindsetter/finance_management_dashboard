import 'package:finance_management_dashboard/utils/responsive.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const InputBorder cusborder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
      borderSide: BorderSide(color: Color.fromARGB(48, 225, 225, 225)),
    );
    return Container(
      margin: const EdgeInsets.only(left: 5),
      color: Colors.white,
      height: 80,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!Responsive.isMobile(context)) const SizedBox(width: 20),
          if (!Responsive.isDesktop(context))
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const Expanded(
            flex: 2,
            child: Text(
              'DashBoard',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(flex: Responsive.isMobile(context) ? 1 : 2),
          if (!Responsive.isMobile(context))
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: cusborder,
                    focusedBorder: cusborder,
                    border: cusborder,
                    fillColor: Color.fromARGB(48, 225, 225, 225),
                    filled: true,
                  ),
                ),
              ),
            ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(48, 225, 225, 225),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),

                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none),
                  ),
                ),
                CircleAvatar(
                  child: Image.asset('assets/images/profile.png'),
                ),
                if (!Responsive.isMobile(context)) const SizedBox(width: 10),
                if (!Responsive.isMobile(context))
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Demo Account',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('demo@gmail.com'),
                    ],
                  )
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

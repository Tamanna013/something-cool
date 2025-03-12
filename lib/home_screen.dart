import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      body: Stack(
        children: [
          // Starry background
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          
          // Main content
          Row(
            children: [
              // Left side - Phone mockup
              SizedBox(
                width: size.width * 0.35,
                child: const PhoneMockup(),
              ),
              
              // Right side - Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                      
                      const SizedBox(height: 40),
                      
                      // Introduction with waving hand
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/wave_hand.gif',
                            height: 50,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "I'm Tamanna",
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      
                      // Developer title
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: 'Web Developer ',
                              style: TextStyle(
                                color: Color(0xFF8E9BBA),
                              ),
                            ),
                            TextSpan(
                              text: '+ ',
                              style: TextStyle(
                                color: Color(0xFF8E9BBA),
                              ),
                            ),
                            TextSpan(
                              text: '\nUI/UX Designer',
                              style: TextStyle(
                                color: Color(0xFF8E9BBA),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 30),
                      
                      // Welcome message
                      const Text(
                        'Welcome to my digital playground!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Software developer by day, UI/UX developer by night.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      
                      const SizedBox(height: 30),
                      
                      // Social buttons
                      Row(
                        children: [
                          SocialButton(
                            label: 'Connect with me',
                            icon: Icons.mail_outline,
                            onPressed: () {},
                            isPrimary: true,
                          ),
                          const SizedBox(width: 10),
                          SocialIconButton(
                            icon: FontAwesomeIcons.github,
                            onPressed: () {},
                          ),
                          const SizedBox(width: 10),
                          SocialIconButton(
                            icon: FontAwesomeIcons.linkedin,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
          // Mobile button
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Icon(Icons.phone_iphone, size: 16),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Mobile',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneMockup extends StatelessWidget {
  const PhoneMockup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.grey.shade300, width: 10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 15,
            spreadRadius: 5,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage('assets/images/bg.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          // Notch
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 120,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          
          // App grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: const [
                  AppIcon(icon: 'assets/icons/about.png', label: 'About'),
                  AppIcon(icon: 'assets/icons/skills.png', label: 'Skills'),
                  AppIcon(icon: 'assets/icons/projects.png', label: 'Projects'),
                  AppIcon(icon: 'assets/icons/tools.png', label: 'Tools'),
                  AppIcon(icon: 'assets/icons/github.png', label: 'GitHub'),
                  AppIcon(icon: 'assets/icons/experience.png', label: 'Experience'),
                  AppIcon(icon: 'assets/icons/linkedin.webp', label: 'LinkedIn'),
                  AppIcon(icon: 'assets/icons/x.webp', label: 'X'),
                  AppIcon(icon: 'assets/icons/telegram.png', label: 'Telegram'),
                ],
              ),
            ),
          ),
          
          // Bottom text
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Build With ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Image.asset('assets/icons/flutter.jpg', height: 16),
                const Text(
                  ' Using ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const Icon(Icons.favorite, color: Colors.blue, size: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final String icon;
  final String label;
  
  const AppIcon({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(8),
            child: Image.asset(icon),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isPrimary;
  
  const SocialButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isPrimary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimary ? Colors.transparent : Colors.black.withOpacity(0.5),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: isPrimary ? Colors.white.withOpacity(0.5) : Colors.transparent,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  
  const SocialIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.5),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: IconButton(
        icon: FaIcon(icon),
        onPressed: onPressed,
        color: Colors.white,
        iconSize: 20,
      ),
    );
  }
}

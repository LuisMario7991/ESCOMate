import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCqAZ9NDjeJD4XRigbwvZLbh-ij2DzWBnKcQmDgtZwD53OPqtm3_qbaVeynuN5ctKmKv4&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKYqcnUXsxNkpJVqLMbcxH5m_wI6HO_K6vRQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr0Aj5kruuBe0_ra5w0jdvMe29qVIXr9p3dQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6QOGO0vL7P1khWwjFDpuNmVr4LUjH44typPKd3mwDtcdhtv-BztqFMmjbUEDS2VHfaog&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGPXbGChC76cV4CfP0GqH067UvZC9QQlRgZA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9d6br1iB0FWiC36XfqVbu5DhfTffUzjOHPw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs8ktXluJfvOIMn7suLcKQR22QmQWNkG-izg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStaq5WgdmFoNXjFDL0q9fFv6dfGSfeaHNbkNR7HdlKPXecohDS_6xW0rvSedPgUUd44ow&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIUBOo6MevygyJLG3IiZfP6huLUUH9XvbvDw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTQxPeKnyMiqzTBIggWo-HwGe6sUa6xR_1PChgEeq8cSiFTfWNsbPTWJdDhYYcsxloHJ0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOSSWMDx4F4fL48C5KWWAXRjCjwUNRJOaOArNU23s8bODmLL_hvQryU6J288hA93aOdlQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5nW7blEH3WjGj5C1TmWLz4eFuhp9T6k2LRw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWfHX1Rq3lfPFL5VTtdknXk_6LugcS_dNUsfQu-CFfi1-jqCCMnkTd6FXOqQgXnxm1xLI&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEMKk44SbXNn6GdSDkBBufmov5KwJHOYEneQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXsL7eSvZJ8a9U4ZHQ5GefzFyHyw0-oOUYPPJCfnk3gD9jjF5ZYv_eCz804EoXRg5v8OA&usqp=CAU',
  ];

  int _currentPage = 0;

  buildCarouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < images.length; i++)
          // ignore: prefer_const_constructors
          Container(
            margin: const EdgeInsets.all(5),
            height: i == _currentPage ? 7 : 2,
            width: i == _currentPage ? 7 : 2,
            decoration: BoxDecoration(
                color: i == _currentPage ? Colors.black : Colors.grey,
                shape: BoxShape.circle),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: images
              .map(
                (e) => Center(
                  child: Image.network(e),
                ),
              )
              .toList(),
          options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (value, _) {
                setState(() {
                  _currentPage = value;
                });
              }),
        ),
        buildCarouselIndicator()
      ],
    );
  }
}

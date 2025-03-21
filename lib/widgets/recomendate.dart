import 'package:flutter/material.dart';
import 'package:travel_apps/models/travel_model.dart';
import 'package:travel_apps/style/color.dart';

class Recomendate extends StatelessWidget {
  final TravelDestination destination;
  const Recomendate({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          Container(
            height: 95,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: destination.image![0].startsWith("http")
                    ? NetworkImage(destination.image![0])
                    : AssetImage(destination.image![0]) as ImageProvider,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  destination.name,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.black,
                      size: 16,
                    ),
                    Text(
                      destination.location,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      // Menggunakan Expanded untuk memberikan ruang yang fleksibel
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "${destination.rate}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: " (${destination.review} reviews)",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        overflow: TextOverflow
                            .ellipsis, // Menambahkan overflow untuk menangani teks yang terlalu panjang
                        maxLines: 1, // Membatasi agar hanya satu baris
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${destination.price}",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: blueTextColor),
                    ),
                    TextSpan(
                      text: " /Person",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

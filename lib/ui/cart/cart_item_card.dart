import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/cart_item.dart';
import '../shared/dialog_utils.dart';
import 'cart_manager.dart';

class CartItemCard extends StatelessWidget {
  final String productId;
  final CartItem cardItem;

  const CartItemCard({
    required this.productId,
    required this.cardItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(cardItem.id),
      background: Container(
        color: Theme.of(context).errorColor,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showConfirmDialog(
          context,
          'Bạn có muốn xóa sản phẩm khỏi giỏ hàng không?',
        );
      },
      // onDismissed: (direction) {
      //   print('Cart item dismissed');
      // },
      onDismissed: (direction) {
        context.read<CartManager>().removeItem(productId);
      },
      child: buildItemCard(),
    );
  }

  Widget buildItemCard() {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text('\$${cardItem.price}'),
              ),
            ),
          ),
          title: Text(cardItem.title),
          subtitle:
              Text('Tổng cộng: ${(cardItem.price * cardItem.quantity)} Đồng'),
          trailing: Text('${cardItem.quantity} x'),
        ),
      ),
    );
  }
}
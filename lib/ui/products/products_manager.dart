import '../../models/product.dart';
import 'package:flutter/foundation.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    //https://webtraicay.com/
    Product(
      id: 'p1',
      title: 'Sầu riêng',
      description:
          '''Sầu riêng Ri6 có dạng trái thuôn hình quả trám, màu vỏ vàng khi chín, gai hơi tù và thưa. Giống SR Ri 6 được đánh giá là giống có chất lượng tốt; cơm vàng đến vàng đậm, thịt ráo, thơm, béo
      Sầu riêng Ri6 Vĩnh Long là loại trái cây đặc sản miền Tây Nam Bộ được mệnh danh là vua của các ông vua trái cây nhiệt đới. Sầu riêng Ri6 rất dễ trồng, dễ chăm sóc, dễ đậu trái, mà lại cho thu hoạch sớm hơn các loại khác. Khi chín, loại trái cây này cho cơm vàng, hạt lép, ít sượng – đạt ưu thế cả về chất lượng và năng suất hơn nhiều giống sầu riêng khác.
      Cái tên Ri6 bắt nguồn từ tên người tìm ra giống sầu riêng này, đó là ông Sáu Ri ở Vĩnh Long vào năm 1990. Khi bóc phần vỏ trái cây này ra, bạn sẽ thấy được phần cùi màu vàng óng rất hấp dẫn, khô ráo, không bị dính tay, hạt lép, ngọt vừa phải và có vị béo cùng hương thơm rất quyến rũ, khiến ai cũng “ngây ngất”.

  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.''',
      price: 90.090,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/nguon_goc_mui_huong_doc_dao_cua_qua_sau_rieng_tu_dau_ma_co_1.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'Xoài cát',
      description:
          '''Xoài cát Hòa Lộc là loại trái cây miền nam đặc sản nổi tiếng của vùng đồng bằng sông Cửu Long, xoài cát Hoà Lộc là một trong những loại quả được ưa chuộng bởi màu sắc hấp dẫn, mùi vị thơm ngon và có giá trị dinh dưỡng cao. Xoài cát Hoà Lộc là đặc sản của tỉnh Tiền Giang. 
Xoài Cát Hoà Lộc Tiền Giang có thịt quả màu vàng tươi, chắc, mịn, dẻo và ít xơ, khi ăn mang vị ngọt đậm đà, thanh mát. Xoài cát Hoà Lộc là loại trái cây đặc sản miền Tây Nam Bộ. Xoài được ưa chuộng bởi màu sắc hấp dẫn cùng mùi vị thơm ngon và hàm lượng dinh dưỡng cao.
Xoài cát Hoà Lộc nhìn thì giống xoài cát Chu, dáng thuôn dài, tròn mình, eo rốn rõ ràng, đỉnh quả nhọn, bầu tròn gần cuống. Khi chín, xoài mang màu vàng tươi, vỏ mỏng tang và có lớp phấn phủ trắng mịn, lấm tấm đốm màu nâu đen. Bổ xoài ra, bạn sẽ thấy thịt quả màu vàng tươi, chắc, mịn, dẻo và ít xơ, khi ăn mang vị ngọt đậm đà, thanh mát.
Loại xoài đặc sản của mảnh đất phù sa màu mỡ Tiền Giang này chỉ cần ngửi thôi cũng đã thấy ngon lắm rồi. Khi được thưởng thức thì du khách nào cũng phải khen ngợi hết lời. Để phân biệt xoài cát Hoà Lộc chuẩn, bạn cần nhìn phía dưới bụng xoài xem có khe rãnh nhỏ thẳng từ cuống đến chóp quả hay không. Nếu có, thì đó là xoài cát Hoà Lộc chính hiệu, rất đáng để bạn mua về thưởng thức ngay.
Miền Tây Nam Bộ không chỉ nổi tiếng với nhiều món ăn đặc sản như bún cá, lẩu mắm, cơm tấm,… mà còn được biết đến với những vựa trái cây sai trĩu trịt, quả thơm ngon, hấp dẫn. Vậy nên khi ghé thăm vùng đất này, đừng quên việc thưởng thức trái cây đặc sản miền Tây Nam Bộ bạn nhé.
''',
      price: 9.010,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/17dba5da4b3dbe7b36d28a46c15b49db-280x210.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Dưa hấu',
      description:
          '''Thời điểm này, bà con trồng dưa hấu tại tỉnh Quảng Ngãi đang bước vào chính vụ thu hoạch dưa hấu. Hàng nghìn tấn dưa cho thu hoạch vẫn chưa tìm được đầu ra. Mặc dù có nơi thương lái ép giá xuống còn 600 – 1.000 đồng/cân nhưng vẫn lâm vào cảnh ế ẩm.
      Ở các tỉnh duyên hải miền Trung nhiều vùng trái cây miền trung trong đó có dưa hấu nhưng không đâu ngon ngọt như dưa hấu của đất Bình Sơn, nằm phía bắc tỉnh Quảng Ngãi
      Đi tới Bình Sơn, một vùng đất cát trắng mịn, có con sông Trà Bồng suốt bốn mùa nước trong xanh, vào tiết từ đầu xuân đến cuối hạ, đâu đâu cũng thấy ngập tràn dưa hấu. Khách đường xa choáng ngợp vì dưa tươi, chín mọng, căng đầy.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.
''',
      price: 10.099,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/duahaunamf_qjnb-280x210.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Mận tam hoa',
      description:
          ''' Mận Tam hoa là loại trái cây miền bắc rất phổ biến và được ưa chuộng nhất ở Hà Nội và các địa phương phía bắc. Quả to, mã đẹp, ăn ngọt, giòn… là những đặc trưng của giống mận tam hoa trồng tại Bắc Hà. Mận tam hoa trồng đến năm thứ ba sẽ cho thu hoạch. Cây ra hoa vào nửa cuối tháng 2 và chín vào cuối tháng 5.
      Mận tam hoa Bắc Hà: Cây mận tam hoa là niềm tự hào của người dân vùng núi Bắc Hà, Lào Cai. Trước khi đậu quả, những cây mận nở hoa trắng ngần khắp các bản làng tạo nên cảnh đẹp rất thơ mộng. Vì thế nơi này mới mệnh danh “cao nguyên trắng” của vùng núi phía Bắc mỗi khi mùa xuân về.
      Mận tam hoa được trồng trên sườn đồi, mọc kín những đồng bằng nhỏ kẹp giữa núi và cả trong vườn nhà. Ở đây, hầu như gia đình nào cũng trồng mận quanh nhà. Tới Bắc Hà vào mùa mận, bạn có thể với tay hái những quả mận chín và to nhất, đưa lên miệng và cảm nhận hương vị chua nhẹ mà ngọt dịu của nó. Quả mận tam hoa Bắc Hà khi chín có màu hồng tím, vỏ dày dễ vận chuyển xa, ăn giòn, ngọt hơn mận hậu vùng núi Tây Bắc vỏ xanh hoặc mận đỏ Tả Van, Sa Pa.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.''',
      price: 20.099,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/man-chin-moc-chau-280x210.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p5',
      title: 'Bơ sáp',
      description:
          ''' Bơ sáp là loại cây trồng chủ lực của vùng Tây Nguyên, đem lại giá trị kinh tế cực kì to lớn.
Bơ sáp hiện nay đã có vài vùng trồng thành công như Đà Lạt – Lâm Đồng nhưng chất lượng nhất vẫn là ở Đắc Lắc – Tây Nguyên.
Trái Cây Miền Nam có Bơ sáp với nhiều hình thù, nhiều kích thước nhưng chỉ có 2 màu sắc chính là Bơ Chín Xanh và Bơ Chín Tím, 2 loại này đều rất ngon nhưng theo chia sẻ của những người sành ăn thì Bơ Chín Tím cho lượng sáp và vị béo ngậy hơn kha khá.
Bơ nước thường có vỏ ngoài láng bóng, sờ mịn màng, nhìn rất đẹp mắt còn
Bơ Sáp Già thì vỏ ngoài sẽ sần sùi, xấu tệ nhưng cực dẻo và ngậy
bơ già mùi thơm ngậy hơn hẳn.
Vỏ trái bơ sáp xanh có lấm tấm đốm vàng thì tỉ lệ sáp sẽ cao hơn rất nhiều.
* Công dụng trái bơ sáp nông sản Tây Nguyên
-Bơ sáp là loại trái cây tốt cho sức khỏe và phù hợp với mọi lứa tuổi.
-Bơ sáp có chứa lượng axit oleic khá cao giúp ngăn ngừa ung thư vú.
-Trong bơ có chứa lượng lutein carotene cao hơn bất cứ loại trái cây nào khác. Chất này giúp chống sự thoái hóa thành các vết đen, bệnh đục nhân mắt và một số bệnh về mắt liên quan đến tuổi thọ.
-Bơ sáp có chứa rất nhiều beta-sitosterol, là một hợp chất làm giảm tỉ lệ cholesterol. Một nghiên cứu đã cho thấy ăn một quả mỗi ngày sẽ giúp giảm tỉ lệ chất béo xuống khoảng 17% chỉ trong vòng một tuần.
-Bơ chứa rất nhiều glutathione – chất chống ôxy hóa rất quan trọng trong quá trình ngăn chặn sự lão hóa, ung thư và bệnh tim.
-Theo những nghiên cứu chưa chính thức bơ sáp chưa môt số chất có khả năng ngăn ngừa ung thư thận và ung thư vòm miệng.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.
''',
      price: 25.099,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/bo-dac-lac1-280x210.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p6',
      title: 'Dừa sáp',
      description: '''
Dừa sáp Trà Vinh được biết đến là loại trái cây đặc sản nổi tiếng bởi hương vị đặc trưng, lớp cơm dày và mềm xốp. Tuy nhiên, dừa sáp và dừa thường về hình thức bên ngoài gần như giống nhau nên nhiều khách hàng chưa.
Dừa sáp Trà Vinh là trái cây miền nam chỉ có duy nhất ở vùng đất này. Và trong tỉnh Trà Vinh đó, dừa sáp ngon nhất và đúng chất nhất là ở huyện Cầu Kè. Dừa sáp có cùi rất dày, ngoài lớp cơm dừa giống như những loại dừa khác thì còn có lớp sáp. Lớp sáp đó chính là phần cơm dừa dày ra để hút nước dừa, nên xôm xốp và dẻo dẻo.
Một cây dừa sáp có chục trái nhưng chỉ có 2- 3 trái trong đó là dừa sáp. Chính vì điều đó mà dừa sáp lại càng có giá trị hơn rất nhiều. Cách ăn dừa sáp cũng khác với các loại dừa khác. Bạn phải bổ đôi quả dừa ra, dùng thìa nạo cùi rồi cho vào máy say sinh tố, thêm đường, sữa và đá vào say đều lên để thành nước uống.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.
''',
      price: 200.099,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/coconut-280x210.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p7',
      title: 'Bưởi da xanhp',
      description: '''
Bưởi da xanh Bến Tre có nguồn gốc ở xã Tân Thanh, huyện Mỏ Cày. Thứ quả này được phát hiện thông qua các kỳ hội thi trái cây ngon do Viện cây ăn quả miền Nam kết hợp với Trung tâm Hội chợ triển lãm Cần Thơ. Đây là loại trái cây quý, là món ăn ngon và bổ dưỡng, đồng thời còn là bài thuốc phòng và trị bệnh do thiếu vitamin cùng các khoáng chất.
Thứ trái cây đặc sản miền Tây Nam Bộ này khi chín vẫn giữ nguyên màu xanh. Tép bưởi bên trong có màu hồng, ráo nước và có rất ít hoặc không có hạt. Múi bưởi khi ăn mang hương vị ngọt thanh đậm đà, rất sảng khoái.
''',
      price: 23.099,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/buoi-da-xanh-308-3.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p8',
      title: 'Nhã Lồng',
      description:
          '''Cùi nhãn lồng Hưng Yên dày và khô, đặc biệt là có hai dẻ xếp rất khít nhau  đây là đặc điểm mà chỉ riêng nhãn lồng Hưng Yên mới có. Nhãn lồng Hưng Yên là loại nhãn ngon được nhiều người ưa thích. Tuy nhiên, trên thị trường cũng xuất hiện nhiều nhãn Trung Quốc khiến người dùng hoang mang, khó phân biệt. Dưới đây là cách giúp bạn nhận biết được nhãn Trung Quốc và nhãn Hưng Yên. ''',
      price: 29.360,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/thu-phu-nhan-long-2-280x210.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p9',
      title: 'Cam Cao Phong',
      description: '''
Cam Cao Phong có nguồn gốc từ huyện Cao Phong của tỉnh Hòa Bình. Không hề nói quá lời khi nói đây là một vựa cam lớn nhất của cả Miền Bắc. Nơi đây nổi tiếng với nhiều giống cam nổi tiếng như cam Canh, cam Xã Đoài, cam ruột đỏ vv.

Trai Cay Dac San Mien Bac

Cam Cao Phong thuộc trái cây miền bắc bắt đầu chín rộ vào khoảng tháng 10 hàng năm. Ngon và nổi tiếng nhất phải kể đến cam lòng vàng – loại cam ngọt và sánh, tiếp đó là cam canh và cam xã Đoài.

Trai Cay Dac San Mien Bac

Cả vùng Cao Phong hầu như nhà nào cũng trồng cam. Lý tưởng nhất là những người chủ ở đây vô cùng hiếu khách và cởi mở, họ sẵn sàng dẫn bạn đi chơi khắp vườn cam, bứt từng loại cam mời bạn ăn thử, giới thiệu cách trồng cam. Thậm chí mua cam rồi quên đem theo, họ còn đi xe đuổi theo đưa tận tay.

Trai Cay Dac San Mien Bac

Thật là tuyệt vời đúng không? Vì thế vào khoảng tháng 10, nếu có điều kiện, bạn nên ghé qua vùng đất này để dạo chơi trong những “vườn vàng” tuyệt đẹp, trò chuyện với những người chủ vườn hiếu khách, và thưởng thức các loại cam thơm ngon. Ngoài ra, cam ở đây không có chất bảo quản nên bạn hoàn toàn có thể yên tâm về chất lượng.

Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.''',
      price: 29.360,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/2camcaophonghoabinh3-280x210.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p10',
      title: ' Táo mèo ',
      description:
          '''Táo mèo Tú Lệ Yên Bái hay còn gọi là quả Sơn Tra là một loại quả thường được dùng như một vị thuốc đông y. Hoa quả miền bắc này có tác dụng tiêu hóa thức ăn tích trệ, tán ứ huyết, sát trùng, tăng cường miễn dịch, chống oxy hóa, hạ huyết áp, giảm cholesterol, kháng khuẩn tốt, bảo vệ gan, chống ung thư…
Trong các vùng có táo mèo ở Việt Nam thì táo mèo Yên Bái là ngon nhất, ở Yên Bái thì táo mèo Tú Lệ là loại ngon nhất. Điều thú vị là cây táo mèo hoàn toàn mọc tự nhiên, không ai trồng cả, cây mọc khắp mọi nơi trong xã.
Trai Cay Dac San Mien Bac
Táo mèo ăn có vị chát, thường phơi khô rồi dùng để ngâm rượu có công dụng chữa bệnh rất tốt, như điều trị các chứng rối loạn tiêu hóa do ăn nhiều thịt, dầu mỡ, trẻ em uống sữa không tiêu; ngừa đau thắt ngực, nhồi máu cơ tim, béo phì, viêm cầu thận cấp và mãn tính. Những trái táo mèo vàng ươm, mang về rửa sạch, ngâm cùng với rượu nếp sẽ cho ra thứ rượu táo mèo thơm dịu, càng uống càng ngọt càng say.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.''',
      price: 29.99,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/ruou-tao-meo-son-tinh.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p11',
      title: 'Xoài tượng',
      description:
          '''  Xoài tượng Bình Định khá lớn, mỗi trái chừng nửa ký, vỏ màu xanh tươi, khi bắt đầu chín trái ửng vàng. Đây là lúc vừa hái. Hái xong người ta đem xếp vào giỏ có lót rạ, cứ một lớp trái một lớp rơm. Muốn xoài mau chín người ta lót bằng lá sầu đông. Xoài bắt đầu bói quả từ 3 năm trở lên.
Trai Cay dac San Mien Trung
Năm loại xoài đặc sản trên của đất Bình Định thì xoài tượng cho giá trị cao, sản lượng thu hoạch tương đối, thị trường rộng được người tiêu dùng thích. Loại cây ăn quả miền trung này có dáng to bầu mình ở cuốn vuốt xuống cuối trái hơi cong, da màu xanh không bị mốc (xoài tốt thì không có chấm nâu đen do bọ rầy gây nên).
Trai Cay dac San Mien Trung
Trái xanh ăn thơm mùi… xoài nhưng chua, ít hôi mủ. Trái thật chín đều thì thơm ngát và ngọt lịm, thịt chắc không nhão, độ cứng vừa phải… mà ăn đúng xoài tượng chín mới thấm đậm được cái hương vị ngon tuyệt của nó.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.''',
      price: 20.99,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/4_8-280x210.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p12',
      title: 'Thanh long',
      description:
          '''Trái Thanh long ruột đỏ Quảng Trị là một trong những loại trái cây 3 miền đặc sản của khu vực miền Trung, nó cũng đang dần trở thành một loại trái cây ưa thích của nhiều người bởi mềm và mát. Đây là loại quả khá rẻ khi vào mùa nhưng có nhiều lợi ích sức khỏe. 
Trai Cay dac San Mien Trung
Thanh long ruột đỏ là một trong những loại trái cây 3 miền đặc sản của khu vực miền Trung, nó cũng đang dần trở thành một loại trái cây ưa thích của nhiều người bởi mềm và mát. Đây là loại quả khá rẻ khi vào mùa nhưng có nhiều lợi ích sức khỏe không kém các loại quả đắt tiền.
Trai Cay dac San Mien Trung
Thanh long có chứa vitamin C, B1, B2 và B3, và khoáng chất thiết yếu bao gồm phốt pho, sắt và canxi. Một trái thanh long có chứa khoảng 60 calo. Dưới đây là những lợi ích sức khỏe tuyệt vời của loại quả này.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.''',
      price: 8.099,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/1434177036-osgmimg_0796_matk-280x210.jpg',
      isFavorite: false,
    ),
    Product(
      id: 'p13',
      title: 'Bưởi Phúc Trạch',
      description:
          '''Bưởi Phúc Trạch là giống bưởi đặc sản của huyện Hương Khê tỉnh Hà Tĩnh. Phúc Trạch là tên làng nơi được cho là tạo ra thứ bưởi này ngon nhất. Bưởi Phúc Trạch có hình cầu tròn, bề ngang và chiều cao gần bằng nhau, cuống quả không lồi, đế quả hơi lõm, vỏ không trơn không ráp, màu sắc vỏ quả xanh vàng.
Trai Cay Dac SanMien Trung
Bưởi Phúc Trạch là giống trái cây đặc sản miền trung của huyện Hương Khê tỉnh Hà Tĩnh. Phúc Trạch là tên làng nơi được cho là tạo ra thứ bưởi này ngon nhất. Bưởi Phúc Trạch có hình cầu tròn, bề ngang và chiều cao gần bằng nhau, cuống quả không lồi, đế quả hơi lõm, vỏ không trơn không ráp, màu sắc vỏ quả xanh vàng, màu sắc thịt quả màu hồng nhạt hoặc màu trắng trong, khối lượng quả đạt từ 1-1,5 kg, số múi 14-16 múi/quả, tỉ lệ ăn được từ 48,1-54,1, số hạt bình quân trong quả 50-70 hạt/quả, độ BRIX (%) từ 10-12,8%, có mùi thơm nhẹ tự nhiên hơi đặc trưng, có vị ngọt hơi thanh chua, ngọt hậu.
Trai Cay Dac San Mien Trung
Hiện nay bưi Phúc Trạch được trồng tập trung chủ yếu ở 4 xã Phúc Trạch, Hương Trạch, Hương Đô, Lộc Yên (đều ở huyện Hương Khê, tỉnh Hà Tĩnh). Có 10 xã phụ cận cũng trồng loại bưởi này. Tuy nhiên, theo các nhà quản lý địa phương, trồng ngon nhất vẫn là mt làng tại xã Phúc Trạch.
  Ngoài ra, Web Trái Cây còn cung cấp các loại trái cây miền bắc, trái cây miền trung, trái cây miền nam khi vào mùa trái. Tất cả các sản phẩm mà shop cung cấp hoàn toàn tự nhiên, đảm bảo vệ sinh và sức khỏe cho người dùng.
==> Những loại trái cây tươi ngon tại shop đã sẵn sàng phục vụ cho các bạn.''',
      price: 29.879,
      imageUrl:
          'https://webtraicay.com/wp-content/uploads/2018/03/buoi-phuc-trach-duoc-mua-duoc-gia-scaled.jpg',
      isFavorite: false,
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }

  void addProduct(Product product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }

  void updlateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    final savedStatus = product.isFavorite;
    product.isFavorite = !savedStatus;
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    _items.removeAt(index);
    notifyListeners();
  }
}
//CK21V7K024



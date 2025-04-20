# baitap5
baitap5_LyVanCuong_K225480106100_HQTCSDL


BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

-------------------------------------------------------------------------------------------------------------------

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Yêu cầu đồ án: Phân tích thiết kế hệ thống tìm bạn chơi thể thao
2. Dựa trên yêu cầu của hệ thống tìm bạn chơi thể thao, em có các bảng dữ liệu cần thiết(3NF) như sau:
- Bảng tài khoản:

  ![image](https://github.com/user-attachments/assets/2bb21553-cac8-4dec-b7db-a571b5976144)

- Bảng thông tin người chơi:

  ![image](https://github.com/user-attachments/assets/966f32e7-2f54-40d5-93ea-d0509652ce3c)

- Bảng địa điểm:

  ![image](https://github.com/user-attachments/assets/cb3cc5eb-b44a-461a-898f-632aeeef1759)

- Bảng môn thể thao:

  ![image](https://github.com/user-attachments/assets/4714508f-d120-4ea9-8a9c-402d98a2a9f1)

- Bảng tạo trận:

  ![image](https://github.com/user-attachments/assets/ffa83084-b77a-47cc-abcb-d310cbbaae2e)

- Bảng trận đấu:

  ![image](https://github.com/user-attachments/assets/6e8eb630-e303-4a14-b4a7-499d1355d5bd)

- Bảng người tham gia:

![image](https://github.com/user-attachments/assets/c7ba2ef4-eb09-4c12-8e63-24aa3173507e)

- Bảng đánh giá trận đấu:

  ![image](https://github.com/user-attachments/assets/3ca58b06-d2d0-46be-9f27-d28a6d110ed7)


Với các khóa ngoại liên kết cho các bảng:

![image](https://github.com/user-attachments/assets/d868719c-1c7f-4b5f-a775-84df43b8ac0c)

![image](https://github.com/user-attachments/assets/2d42cfe6-7ca0-4ce0-8935-5253ea29ed59)

![image](https://github.com/user-attachments/assets/f730b200-dc04-4259-8bed-5de1a290056a)

![image](https://github.com/user-attachments/assets/f427240e-1189-4d21-83c9-bc944708b040)

![image](https://github.com/user-attachments/assets/51ea5c86-952f-45a5-8971-2071f8fda579)

![image](https://github.com/user-attachments/assets/ba878368-e753-4821-be40-20ba7f210cc2)


B.Nội dung Bài tập 05:
1. Tạo csdl cho hệ thống tìm bạn chơi

2.Bố sung thêm trường phi chuẩn: số lượng sân còn trống trước và sau khi được tạo, số lượng người tham gia trong bảng trận đấu, số trận đã chơi và số trận đã tạo trong bảng thông tin người chơi

3. Viết trigger cho các bảng để đạt được mục tiêu:
   - Bấm dấu "+" vào bảng và chuột phải vào Triggers ---> new trigger
  
     ![image](https://github.com/user-attachments/assets/8c9fd0cc-9e6f-48f6-9cc1-87b3de7c0f81)
     

   - Bảng trận đấu: số lượng người tham gia sẽ tự động tăng khi có người bấm tham gia trận đấu:
     
     ![image](https://github.com/user-attachments/assets/cfa7e993-5e07-494b-84ff-c86e91ad8a72)

   - Bảng tạo trận: số lượng sân còn trống của bảng địa điểm sẽ bị giảm đi khi sân đó được chọn trong bảng tạo trận, khi người chơi tạo trận thì số lượng trận đấu đã tạo trong bảng thông tin người chơi sẽ tự động cập nhật:


  ![image](https://github.com/user-attachments/assets/1b846e46-ffcc-43b5-83e5-4f016ca8f505)

![image](https://github.com/user-attachments/assets/24b9e3c4-260f-49d8-87d2-00c7478e5788)

- Bảng người tham gia: tự động cập nhật số lượng trận đã chơi khi người chơi bấm tham gia vào trận đấu( trạng thái trong bảng người tham gia là đã được duyệt):

  ![image](https://github.com/user-attachments/assets/fabbd8d2-afe2-4dc3-ba61-b1a4a28a6127)

4. Thêm dữ liệu có kiểm soát vào các bảng để test trigger auto run ( do máy em dùng edit bị lag nên em xin phép nhờ thằng Chat code insert dữ liệu vào các bảng cho em ạ):

   ![image](https://github.com/user-attachments/assets/56f602a9-adcb-4fa4-9520-6a9c78be2fec)

- Test trigger: chuyển trạng thái của 1 người tham gia từ chờ xử lí thành đã tham gia và xem kết quả:
  + trước:

    ![image](https://github.com/user-attachments/assets/a4d1b14d-660e-4057-8c38-e6a2c57af58b)

  + Thay đổi trạng thái:
 
    ![image](https://github.com/user-attachments/assets/4bbde40b-eef6-4aab-b58c-e291e2a7e619)

  + Sau:
 
    ![image](https://github.com/user-attachments/assets/90fcc4db-5f5c-42db-8df5-76bb7f39cddd)

===> Kết Luận: Trigger giúp em ngăn chặn việc cố gắng chèn thêm những dữ liệu phi chuẩn vào bảng và tự động cập nhật dữ liệu 1 cách logic từ các bảng có liên kết khi dữ liệu của 1 hoặc nhiều trong các bảng bị thay đổi

                           -



  

    

     



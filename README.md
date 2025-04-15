# baitap4
Bài tập 04 của SV: K225480106100 - Ly Van Cuong - HQTCSDL

bai tap 4: (sql server)
yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình
   gõ text mô tả cho ảnh đó

Gợi ý:
  sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)
  

deadline: 15/4/2025



-------------------------------------------------------------------------------------------------------------
1. Tạo CSDL cho hệ thống TKB:

   ![image](https://github.com/user-attachments/assets/00906ac3-559b-4f52-94dd-71ca063b2705)


2. Dựa vào nguồn dữ liệu: TMS.tnut.edu.vn để tạo ra các bảng với các thuộc tính phù hợp(đã đạt chuẩn 3NF), đặt kiểu dữ liệu cho các thuộc tính sao cho tối ưu:

   + Bảng GV:

   ![image](https://github.com/user-attachments/assets/e2e74140-f077-443d-8cbb-deaef0db73ef)

   + Bảng LOP:
  
     ![image](https://github.com/user-attachments/assets/6bdbcff2-5765-49db-9a22-bdde60f66c8a)

   + Bảng MON:
  
     ![image](https://github.com/user-attachments/assets/8d5ab132-384a-447f-a855-9e875c6ebd7d)

   + Bảng PHONG:
  
     ![image](https://github.com/user-attachments/assets/ff05cd5b-efca-4e63-8dac-66abdc7e687c)

   + Bảng LICH (lịch dạy):
  
     ![image](https://github.com/user-attachments/assets/811a2d1a-9c6a-4336-a280-7e0ad04ef9dc)

3. Đặt khóa chính cho các bảng và liên kết các khóa ngoại:

   + Bảng liên kết các khóa ngoại:
  
     ![image](https://github.com/user-attachments/assets/476ebe2a-3782-4d0b-96b9-8ce1556895c7)

  + Sau khi đặt các khóa chính và liên kết các khóa ngoại ta được sơ đồ liên kết sau ( database diagrams):

    ![image](https://github.com/user-attachments/assets/2c4fe330-0d0c-4d6a-874a-8191e90bd6ef)

4. Lấy thông tin từ nguồn TMS.tnut.edu.vn dán vào Excel và tiền xử lí dữ liệu (lọc các dữ liệu trùng lặp ở một số bảng)
   ------> Copy các dữ liệu đã được xử lí từ Excel vào trong mục Edit của các bảng

   + Bảng GV:

  ![image](https://github.com/user-attachments/assets/dc25ab07-c0df-4446-b51a-2769c2112318)

   + Bảng LOP:

     ![image](https://github.com/user-attachments/assets/c9d95cbb-4d56-4c3e-90c9-fd5a78f399f6)

   + Bảng MON:

     ![image](https://github.com/user-attachments/assets/9c346861-2497-4fc5-9a88-b697f2788a98)

   + Bảng PHONG:

     ![image](https://github.com/user-attachments/assets/7cda0069-4708-4919-a847-d3a1fef83d20)

   + Bảng LICH:

     ![image](https://github.com/user-attachments/assets/a4ddbaa0-e991-44bb-9085-768d637fffbe)

5. Truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra (em bổ sung thêm ngày):

   ![image](https://github.com/user-attachments/assets/fd531410-a5c2-479a-a8fb-ebd53726cc00)

6. Trả lời cho câu hỏi: rong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.
   - Em tạo 1 truy vẫn giữa thời điểm này và thời điểm kia để so sánh với giờ vào và giờ ra:

     ![image](https://github.com/user-attachments/assets/5029f342-f712-41f8-9785-3915c193a78f)

Ngoài ra ta cũng có thể đóng gói thành 1 function để những lần sau không cần phải truy vấn quá dài:

![image](https://github.com/user-attachments/assets/9ce7b678-c73b-4798-b58e-1c34e0949941)

Đóng gói function và truy vấn ngắn gọn:

![image](https://github.com/user-attachments/assets/186945e1-7385-4ccd-9d8e-97510105a10d)





     





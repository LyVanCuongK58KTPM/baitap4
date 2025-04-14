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
- B1: Tạo các bảng: GV,MON,PHONG,LICH,LOP và chuẩn hóa các bảng dưới dạng 3NF ta được sơ đồ liên kết:

  ![image](https://github.com/user-attachments/assets/7dc6c0cf-e2f6-4044-8edd-41ed30ca2672)


- B2: Thực hiện đặt khóa chính và các khóa ngoại liên kết với khóa chính như trên sơ đồ liên kết

- B3: Copy dữ liệu từ nguồn :TMS.tnut.edu.vn, paste vào excel sau đó thực hiện dán các dữ liệu cần thiết vào các bảng ở mục edit bảng trong sql

 ![image](https://github.com/user-attachments/assets/191d5700-e303-47ce-b9e8-1a58ef0acbbb)

- B4: Truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra:

  ![image](https://github.com/user-attachments/assets/c461aa87-d1f6-4ea2-9282-91dad472de18)

- trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.
  Sử dụng lệnh Where để truy vấn ra thông tin các giảng biên đang giảng dạy với điều kiện: Giờ cần kiểm tra phải sau hoặc bằng giờ vào và trước khi tiết học kết thúc(giờ ra)
  
  ![image](https://github.com/user-attachments/assets/b81b59a8-f68c-4982-846c-f007b478adcc)



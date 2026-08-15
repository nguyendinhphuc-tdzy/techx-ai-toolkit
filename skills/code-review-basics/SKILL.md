---
name: code-review-basics
description: Hướng dẫn đọc và đánh giá code do AI sinh ra trước khi chấp nhận, dành cho người không rành kỹ thuật lẫn người có nền tảng code. LUÔN dùng trước khi coi một tính năng do AI viết là "xong", khi chuẩn bị gộp code vào nhánh chính, hoặc khi cần giải thích cho người khác trong đội hiểu đoạn code AI vừa viết.
---

# Code Review Basics — Đọc hiểu trước khi chấp nhận

## Vì sao không thể "chấp nhận mù"

Thể lệ cuộc thi yêu cầu đội thi hiểu và bảo vệ được giải pháp trước Ban Giám khảo. Nếu
không ai trong đội đọc và hiểu code AI viết, đội sẽ lúng túng khi bị hỏi "tại sao chọn
cách này" — và quan trọng hơn, sẽ không phát hiện được lỗi tiềm ẩn trước khi nó gây hậu
quả thật (mất dữ liệu, lộ thông tin, sản phẩm sập khi demo).

## Checklist đọc code, kể cả khi bạn không biết viết code

Bạn không cần hiểu từng dòng cú pháp để review có ích. Tập trung vào các câu hỏi sau —
nhờ AI giải thích bằng lời nếu cần:

1. **Luồng dữ liệu đi đâu?** Dữ liệu người dùng nhập vào được lưu ở đâu, gửi đi đâu?
2. **Điều gì xảy ra khi input sai hoặc rỗng?** Yêu cầu AI chỉ ra đoạn code xử lý trường
   hợp này — nếu không có, đây là lỗ hổng cần bổ sung.
3. **Có xử lý lỗi (try-catch / error handling) không?** Nếu một bước thất bại (mạng lỗi,
   API AI không phản hồi), người dùng có thấy thông báo dễ hiểu hay màn hình trắng?
4. **Có gì "nhìn lạ" so với phần còn lại của code không?** Style khác biệt đột ngột, đoạn
   code phức tạp bất thường cho một việc đơn giản — dấu hiệu cần hỏi AI giải thích kỹ hơn
   hoặc yêu cầu viết lại đơn giản hơn.

## Với người có nền tảng code — thêm các điểm sau

- Có logic trùng lặp nên tách hàm dùng chung không?
- Có đang gọi API/database nhiều lần không cần thiết (ảnh hưởng hiệu năng, chi phí) không?
- Tên biến/hàm có mô tả đúng ý nghĩa không, hay là tên chung chung AI tự đặt?
- So sánh với `git diff` trước khi commit — đọc chính xác những gì thay đổi, không chỉ
  tin "AI nói là đã sửa đúng chỗ".

## Quy trình review nhanh cho một Pull Request/thay đổi trong đội

1. Người viết (hoặc người prompt AI viết) tóm tắt 2-3 câu: thay đổi này làm gì, vì sao
   cần.
2. Người review đọc qua theo checklist ở trên, hỏi lại nếu có phần không rõ.
3. Nếu ổn, gộp vào nhánh chính (`skills/git-basics/`); nếu chưa ổn, ghi rõ cần sửa gì,
   không chỉ nói "chưa được".

## Cảnh báo cho agent

Khi người dùng nói "AI viết xong rồi, gộp vào luôn được chưa", **không** xác nhận ngay —
dẫn họ qua ít nhất 3-4 câu hỏi trong checklist ở trên trước.

## Nguồn tham khảo

Tổng hợp thực tiễn code review phổ biến trong kỹ thuật phần mềm, không dựa trên nghiên
cứu định lượng cụ thể.

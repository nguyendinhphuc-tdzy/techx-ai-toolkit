---
name: debugging-basics
description: Hướng dẫn cách mô tả và xử lý lỗi một cách chính xác khi làm việc với AI, thay vì paste nguyên thông báo lỗi và hy vọng AI đoán đúng. LUÔN dùng khi có lỗi/bug xuất hiện, khi người dùng nói "nó bị lỗi" mà chưa mô tả cụ thể, hoặc khi AI đã thử sửa cùng một lỗi từ 2 lần trở lên mà chưa thành công — kể cả khi người dùng đóng khung việc này là "AI không hiểu ý tôi" hay "prompt sao cho đúng", đây vẫn luôn là debugging-basics chứ không phải ai-prompting, vì nguyên nhân gốc là thiếu mô tả lỗi chính xác (mong đợi/thực tế/thông báo lỗi), không phải kỹ thuật viết prompt.
---

# Debugging Basics — Mô tả lỗi chính xác trước khi nhờ AI sửa

## Vì sao "paste lỗi và đợi AI sửa" thường thất bại

Thông báo lỗi kỹ thuật thường chỉ cho biết *nơi* chương trình dừng lại, không phải *tại
sao* nó dừng ở đó theo đúng ý người dùng. AI (và cả bạn) cần hiểu **hành vi mong đợi**
trước khi biết cái gì đang "sai".

## Quy trình mô tả lỗi có hệ thống

### Bước 1 — Tái hiện lỗi một cách nhất quán
Xác định chính xác các bước để lỗi xảy ra lại được, mỗi lần đều giống nhau. Nếu lỗi
"thỉnh thoảng mới xảy ra", ghi lại điều kiện khác biệt giữa các lần (dữ liệu khác nhau?
thao tác nhanh/chậm khác nhau?).

### Bước 2 — Phân biệt rõ 3 điều: mong đợi / thực tế / thông báo lỗi
Viết ra theo đúng cấu trúc:
- **Tôi mong đợi:** [hành vi đúng]
- **Thực tế xảy ra:** [hành vi sai, mô tả cụ thể]
- **Thông báo lỗi (nếu có):** [copy nguyên văn]

### Bước 3 — Thu hẹp phạm vi trước khi hỏi AI
Tự hỏi: lỗi xảy ra ở bước nào trong luồng xử lý? Nếu có thể, tạm thời thêm log/in ra giá
trị trung gian để biết chương trình dừng ở đâu, thay vì đoán cả luồng.

### Bước 4 — Cung cấp đúng ngữ cảnh cho AI
Đưa vào: đoạn code liên quan trực tiếp (không cần cả file nếu không cần thiết), thông
báo lỗi đầy đủ, các bước tái hiện, và điều bạn đã thử (để AI không lặp lại hướng đã thất
bại).

### Bước 5 — Nếu AI sửa 2-3 lần không xong, đổi chiến lược
Dấu hiệu AI đang thiếu ngữ cảnh quan trọng hoặc đang hiểu sai vấn đề gốc. Dừng lại, tự
đọc kỹ đoạn code liên quan, hỏi AI giải thích logic hiện tại đang làm gì (không phải sửa
gì) để hiểu đúng trước khi tiếp tục.

## Các loại lỗi phổ biến khi build với AI, và hướng xử lý

| Loại lỗi | Nguyên nhân thường gặp | Hướng xử lý |
|---|---|---|
| Chạy được trên máy này, không chạy máy khác | Thiếu biến môi trường, phụ thuộc vào cấu hình cục bộ | Xem `skills/production-readiness/` |
| AI "sửa" xong lại phát sinh lỗi mới ở chỗ khác | AI sửa cục bộ không thấy tác động toàn cục | Cung cấp thêm ngữ cảnh các file liên quan, kiểm tra bằng Git diff trước khi chấp nhận |
| Lỗi chỉ xảy ra với một số input cụ thể | Thiếu xử lý case biên | Xem `skills/testing-and-validation/` |
| Lỗi bảo mật (lộ key, quyền truy cập sai) | Thường không hiện lỗi rõ ràng — cần chủ động rà soát | Xem `skills/security-basics/` |

## Cảnh báo cho agent

Nếu người dùng chỉ nói "nó bị lỗi" hoặc paste một dòng lỗi không kèm ngữ cảnh, **hỏi lại
theo cấu trúc mong đợi/thực tế/thông báo lỗi** ở Bước 2 trước khi đề xuất bất kỳ sửa đổi
nào — tránh đoán mò dẫn tới sửa sai chỗ.

## Nguồn tham khảo

Tổng hợp thực tiễn debug phổ biến trong kỹ thuật phần mềm, không dựa trên nghiên cứu
định lượng cụ thể nào.

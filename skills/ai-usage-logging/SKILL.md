---
name: ai-usage-logging
description: Hướng dẫn ghi nhật ký sử dụng AI trong suốt quá trình build, để chuẩn bị "Báo cáo sử dụng AI" bắt buộc nộp ở vòng Bán kết theo Thể lệ. LUÔN dùng ngay từ buổi đầu tiên đội bắt đầu dùng AI để build, không đợi tới gần hạn nộp mới dùng skill này. Cũng dùng khi người dùng hỏi "báo cáo sử dụng AI viết gì" hoặc chuẩn bị nộp hồ sơ Bán kết.
---

# AI Usage Logging — Ghi log dùng AI ngay từ đầu

## Vì sao phải ghi ngay từ đầu, không đợi tới lúc nộp

Thể lệ (Mục VII) yêu cầu Báo cáo sử dụng AI phải nêu: danh sách công cụ/mô hình đã
dùng, vai trò cụ thể của từng công cụ, phần công việc do chính thành viên thực hiện
không phụ thuộc AI, và giải trình vì sao AI tạo giá trị đáng kể. Nếu đợi tới cuối vòng
Bán kết mới ngồi nhớ lại 4 tuần đã dùng AI thế nào, hầu hết chi tiết quan trọng đã quên
— đặc biệt là những quyết định con người đã đưa ra để chỉnh sửa/bác bỏ đề xuất của AI,
vốn là bằng chứng thuyết phục nhất cho "phần đóng góp của con người".

## Cách ghi log — đơn giản, làm được mỗi ngày

Agent áp dụng skill này nên **chủ động nhắc** người dùng ghi log sau mỗi phiên làm việc
có dùng AI đáng kể, theo mẫu ngắn (không cần dài):

```
[Ngày] [Công cụ AI] [Việc dùng AI để làm]
→ AI đề xuất: [tóm tắt ngắn]
→ Đội giữ lại: [phần nào]
→ Đội chỉnh sửa/bác bỏ: [phần nào, và tại sao]
→ Người quyết định: [tên thành viên]
```

Ví dụ:
```
15/09 — Claude Code — Sinh code xử lý xếp lịch phòng học
→ AI đề xuất: thuật toán xếp lịch tham lam (greedy)
→ Đội giữ lại: cấu trúc dữ liệu đề xuất
→ Đội chỉnh sửa: đổi sang thuật toán có ưu tiên theo loại phòng, vì greedy đơn thuần
   xếp sai với phòng có thiết bị đặc thù — đội tự phát hiện qua test case Vòng 2
→ Người quyết định: Minh (Product Thinker)
```

Dùng file `templates/bao-cao-su-dung-ai-template.md` làm nơi ghi log liên tục — không
phải viết một lần lúc sắp nộp.

## Những gì cần ghi lại đặc biệt kỹ

1. **Mọi lần đội bác bỏ hoặc sửa đáng kể đề xuất của AI** — đây là bằng chứng rõ nhất
   cho tư duy phản biện, tiêu chí giám khảo quan tâm nhất.
2. **Quyết định không dùng AI ở một chỗ nào đó dù có thể dùng được** — cho thấy đội hiểu
   giới hạn của AI, không lạm dụng.
3. **Kết quả thử nghiệm A/B hoặc so sánh có AI / không AI** nếu có làm — là bằng chứng
   mạnh nhất cho "giải pháp tốt hơn nhờ AI".
4. **Ai trong đội làm việc gì** — tránh báo cáo chung chung "cả đội", giám khảo có thể
   hỏi trực tiếp từng thành viên ở phần phản biện.

## Cảnh báo cho agent

- Không tự bịa nội dung log nếu người dùng không cung cấp — chỉ tổng hợp/định dạng lại
  những gì họ thực sự đã làm và kể lại.
- Nếu tới gần hạn nộp mà log gần như trống, khuyến khích đội dành 30-45 phút cùng ngồi
  nhớ lại theo từng mốc thời gian (Sơ loại → Bán kết) thay vì viết chung chung — chất
  lượng trung thực quan trọng hơn độ dài.

## Nguồn tham khảo

Yêu cầu nội dung báo cáo trích trực tiếp từ Mục VII.2 Thể lệ cuộc thi. Khuyến nghị "ghi
log ngay từ đầu, không đợi tới cuối" là tổng hợp thực tiễn quản lý dự án phổ biến, không
dựa trên benchmark cụ thể.

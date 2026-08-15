# Công cụ AI theo từng giai đoạn

*Danh sách mang tính tham khảo, không thiên vị nền tảng nào. Chọn công cụ dựa trên: bạn
đã quen dùng gì, giới hạn miễn phí có đủ cho 6 tuần không, và mức độ phù hợp với tính
năng bạn cần build — không chọn vì "nghe hot". Thông tin công cụ/giá cả thay đổi
thường xuyên, nên kiểm tra lại trang chính thức trước khi quyết định.*

## Giai đoạn Idea — nghiên cứu vấn đề, người dùng

- **Trợ lý hội thoại tổng quát** (Claude, ChatGPT, Gemini...): tổng hợp thông tin, đóng
  vai người dùng để thử phỏng vấn giả lập trước khi phỏng vấn thật, brainstorm câu hỏi
  khảo sát.
- **Google Forms / Typeform**: khảo sát nhanh người dùng thật — vẫn là cách xác thực
  vấn đề đáng tin nhất, không có AI nào thay thế được việc hỏi người thật.

## Giai đoạn Build — thiết kế và code

**AI coding assistant tích hợp trong editor** (cần biết code cơ bản, kiểm soát tốt
nhất):
- Cursor, Windsurf, Claude Code, GitHub Copilot — phù hợp khi đội có ít nhất một người
  đọc hiểu code, muốn kiểm soát kiến trúc chặt.

**AI builder không cần biết code** (tốc độ nhanh, phù hợp non-tech, kiểm soát ít hơn):
- Lovable, Replit Agent, v0, Bolt — sinh cả frontend lẫn backend từ mô tả ngôn ngữ tự
  nhiên, phù hợp đội không có ai biết code nhưng vẫn cần đọc kỹ output và test kỹ theo
  `skills/ai-assisted-build/`.

**API cho tính năng AI trong sản phẩm** (khi sản phẩm cần AI xử lý dữ liệu/sinh nội
dung ngay trong lúc chạy, không phải chỉ dùng AI để viết code):
- Anthropic API (Claude), OpenAI API, Google AI (Gemini) — cân nhắc chi phí theo lượng
  dùng, hầu hết có gói dùng thử/miễn phí giới hạn phù hợp MVP.

## Giai đoạn Test

- **Thu thập phản hồi**: Google Forms, hoặc đơn giản là phỏng vấn trực tiếp có ghi âm
  (xin phép trước) — quan trọng hơn công cụ là quy trình ở `skills/testing-and-validation/`.

## Giai đoạn Ship — triển khai (deploy)

*Chọn theo loại sản phẩm:*

| Loại sản phẩm | Gợi ý nền tảng |
|---|---|
| Frontend tĩnh (không cần backend riêng) | Vercel, Netlify, GitHub Pages |
| Full-stack (frontend + backend + database) | Vercel + Supabase, Railway, Render |
| Backend/API riêng biệt | Railway, Render, Fly.io |
| Cần database có sẵn nhanh | Supabase, Neon, PlanetScale |

Tất cả các nền tảng trên đều có gói miễn phí đủ dùng cho một MVP thi đấu 6 tuần — không
cần trả phí ở giai đoạn này.

## Một nguyên tắc chọn công cụ, áp dụng cho mọi giai đoạn

Trước khi thêm bất kỳ công cụ AI nào vào quy trình, hỏi: *"Nếu bỏ công cụ này ra, việc gì
sẽ khó hơn rõ rệt?"* Nếu không trả lời được cụ thể, có thể chưa cần công cụ đó — giữ bộ
công cụ gọn giúp đội kiểm soát tốt hơn trong 6 tuần ngắn ngủi.

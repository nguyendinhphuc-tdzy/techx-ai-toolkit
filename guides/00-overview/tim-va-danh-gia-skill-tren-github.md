# Cách tự tìm và đánh giá Skill/Repo AI trên GitHub

Repo này không thể chứa hết mọi skill hữu ích — hệ sinh thái skill cho AI agent đang mở
rộng theo tuần. Kỹ năng quan trọng hơn việc thuộc lòng danh sách là: **tự tìm được và tự
đánh giá được** một skill/repo có đáng dùng hay không.

## Bước 1 — Bắt đầu từ danh sách tổng hợp (awesome-list), không tìm mò từng repo lẻ

GitHub có truyền thống các repo dạng "awesome-list" — danh sách được cộng đồng tuyển
chọn theo chủ đề. Với skill cho AI agent, các danh sách đáng bắt đầu:

- `anthropics/skills` — repo skill chính chủ của Anthropic, chuẩn nhất về format
- `ComposioHQ/awesome-claude-skills` — danh sách tổng hợp lớn, hơn 1000 skill
- `travisvn/awesome-claude-skills` — tập trung vào Claude Code
- `obra/superpowers` — thư viện skill cộng đồng được đánh giá "battle-tested"

Cách tìm thêm danh sách mới: search GitHub với từ khoá `awesome claude skills`,
`awesome cursor rules`, `awesome ai agent skills`, hoặc duyệt qua GitHub Topics tại
`github.com/topics/claude-skills` và `github.com/topics/claude-code-skills`.

## Bước 2 — Dùng đúng cú pháp search của GitHub

- `topic:claude-skills` — tìm theo topic được gắn thẻ chính thức
- `SKILL.md in:path` — tìm repo có chứa file SKILL.md
- `stars:>500` kết hợp với từ khoá — lọc bớt repo ít người dùng thử/kiểm chứng
- `pushed:>2026-06-01` — chỉ hiện repo còn cập nhật gần đây (thay ngày theo nhu cầu)

Ví dụ: tìm skill về testing web app còn được cập nhật trong 2 tháng gần nhất —
`topic:claude-skills web testing pushed:>2026-06-01`

## Bước 3 — Đọc tín hiệu chất lượng, đừng chỉ nhìn số sao

Số sao (star) là tín hiệu phổ biến nhất nhưng **không** đủ để kết luận một skill tốt.
Đọc thêm các tín hiệu sau, theo thứ tự quan trọng:

1. **Ai maintain repo?** Tổ chức có uy tín (Anthropic, các công ty công nghệ đã biết)
   hay một cá nhân? Không có nghĩa cá nhân thì tệ — nhiều skill cộng đồng rất tốt — nhưng
   cần xem thêm các tín hiệu dưới đây để bù lại.
2. **Commit gần nhất khi nào?** Repo không cập nhật hơn 6-12 tháng trong một hệ sinh
   thái thay đổi nhanh là dấu hiệu đáng ngờ, trừ khi skill đó thuộc loại "hoàn thiện, ít
   cần sửa" (ví dụ skill xử lý một định dạng file ổn định).
3. **Có bao nhiêu issue đang mở, và có ai trả lời không?** Nhiều issue chưa ai đụng tới
   trong thời gian dài cho thấy repo ít được bảo trì thật sự dù vẫn có sao.
4. **Có test/eval kèm theo không?** Skill nghiêm túc thường có ví dụ, test case, hoặc
   quy trình đánh giá (xem cách `skill-creator` làm eval để hiểu chuẩn mực này).
5. **README có giải thích rõ "dùng khi nào" không, hay chỉ liệt kê tính năng mơ hồ?**
   SKILL.md tốt luôn có phần "description" rõ ràng về ngữ cảnh kích hoạt.

## Bước 4 — Đọc SKILL.md trước khi cài, không cài mù

Mở trực tiếp file SKILL.md (không cần cài) để đọc: skill này thực sự dạy agent làm gì,
có đúng cái bạn cần không, có xung đột với skill khác bạn đã cài không (ví dụ hai skill
cùng "chiếm" một ngữ cảnh kích hoạt giống nhau).

## Bước 5 — Cài thử trên một project phụ trước khi dùng cho project thi

Copy skill vào thư mục agent tương ứng (`.claude/skills/`, `.cursor/rules/`...), thử với
một vài yêu cầu thực tế, rồi mới quyết định giữ lại cho project chính thức của đội.

## Cảnh báo an toàn khi cài skill từ nguồn lạ

Một SKILL.md chỉ là văn bản hướng dẫn AI, nhưng một số skill đi kèm **script thực thi**
(trong thư mục `scripts/`). Trước khi chạy script từ một repo bạn không quen biết, đọc
qua nội dung script — không chạy mù script tải về từ nguồn không rõ ràng, đặc biệt là
script có quyền truy cập mạng, biến môi trường, hoặc file hệ thống.

## Liên quan

- `resources/nguon-tham-khao.md` — danh sách nguồn đã được kiểm chứng, dùng làm điểm
  khởi đầu
- `skills/README.md` — cách gắn skill đã tìm được vào agent bạn đang dùng

---
name: ai-assisted-build
description: Hướng dẫn quy trình xây dựng MVP có hệ thống khi dùng AI coding assistant (Claude Code, Cursor, ChatGPT, Lovable, Replit Agent...), chống lại kiểu "vibe coding" thiếu kiểm soát. LUÔN dùng khi người dùng ĐÃ có vai trò AI rõ ràng (qua ai-solution-design) và bắt đầu code/dựng sản phẩm, hoặc khi cần lập kế hoạch kỹ thuật cho MVP trước vòng Bán kết. KHÔNG dùng nếu ý tưởng/vấn đề CHƯA được đóng khung trong hội thoại — dù người dùng nói "để AI viết code luôn" hay "cứ prompt rồi xem chạy không", vẫn phải quay lại problem-framing (rồi ai-solution-design) trước.
---

# AI-Assisted Build — Xây MVP có hệ thống, không vibe code

## "Vibe coding" là gì và tại sao nó thất bại ở cuộc thi này

Vibe coding: mở AI lên, gõ một prompt mơ hồ, chạy thử, thấy lỗi thì paste lỗi vào AI, lặp
lại tới khi "có vẻ chạy được" — không ai trong đội thực sự hiểu kiến trúc, không có gì
kiểm chứng được, và khi cần sửa một chỗ thì hỏng chỗ khác. Sản phẩm kiểu này thường: (1)
chạy trên máy người viết nhưng không chạy trên máy khác, (2) sụp đổ ngay khi demo có
tình huống ngoài kịch bản, (3) đội thi không giải thích được lựa chọn kỹ thuật khi bị
BGK hỏi phản biện — vi phạm đúng tinh thần "phần đóng góp về tư duy, quyết định của con
người" mà Thể lệ yêu cầu.

Agent áp dụng skill này có trách nhiệm **giữ người dùng đi đúng quy trình dưới đây**,
kể cả khi họ muốn "làm nhanh cho xong". Làm đúng quy trình vẫn nhanh hơn vibe coding về
tổng thời gian, vì tránh được vòng lặp sửa-lỗi-sinh-lỗi-mới.

## Quy trình 6 bước

### Bước 1 — Viết đặc tả phạm vi MVP trước khi viết prompt đầu tiên
Xác định rõ: 3-5 tính năng **lõi** duy nhất chứng minh được giá trị AI đã thiết kế ở
bước `ai-solution-design`. Viết ra danh sách "Không làm trong MVP này" song song — đây
là bước hay bị bỏ qua nhất và gây trễ tiến độ nhất. Một MVP tốt cho 6 tuần thường có
3-5 tính năng, không phải 15.

### Bước 2 — Chọn kiến trúc đơn giản nhất đáp ứng được yêu cầu
Không chọn kiến trúc phức tạp "cho chuyên nghiệp" nếu MVP không cần. Ưu tiên: một
framework quen thuộc với AI coding assistant (Next.js, React + FastAPI, v.v. — AI được
train nhiều nhất trên các stack phổ biến nên hỗ trợ tốt hơn), một database đơn giản
(Postgres/SQLite/Supabase), tách rõ frontend/backend nếu có, quản lý biến môi trường
(env vars) ngay từ đầu chứ không hardcode API key vào code.

### Bước 3 — Chia nhỏ việc build thành các đơn vị kiểm chứng được
Không prompt "làm cho tôi cả app". Chia theo tính năng, mỗi tính năng chia theo: (a) mô
hình dữ liệu, (b) logic xử lý, (c) giao diện, (d) kết nối AI (nếu có). Sau mỗi đơn vị,
**chạy thử và xác nhận nó hoạt động đúng trước khi yêu cầu AI làm phần tiếp theo.** Đây
là khác biệt cốt lõi giữa build có hệ thống và vibe coding.

### Bước 4 — Viết prompt rõ ràng, có ngữ cảnh, có tiêu chí chấp nhận
Prompt tốt gồm: mục tiêu cụ thể của đoạn code này, ngữ cảnh (đoạn code liên quan, cấu
trúc project hiện tại), ràng buộc (thư viện được dùng, style code), và tiêu chí để biết
khi nào đúng ("khi nhập email sai định dạng, hiển thị lỗi X"). Tránh prompt kiểu "làm
cho tôi tính năng đăng nhập" không kèm ngữ cảnh gì.

### Bước 5 — Đọc và hiểu code AI tạo ra trước khi chấp nhận
Không copy-paste mà không đọc. Tối thiểu: hiểu luồng dữ liệu đi qua đâu, có lưu thông
tin nhạy cảm (mật khẩu, API key) sai chỗ không, có xử lý trường hợp lỗi/rỗng không. Nếu
không hiểu đoạn code AI viết, yêu cầu AI giải thích trước khi dùng — đừng để có code
trong sản phẩm mà không ai trong đội hiểu, vì BGK sẽ hỏi.

### Bước 6 — Dùng version control (Git) ngay từ commit đầu tiên
Commit sau mỗi đơn vị chạy được, kèm message rõ ràng. Lý do thực dụng: khi AI "sửa" làm
hỏng thêm, bạn có điểm quay lại an toàn thay vì build lại từ đầu. Đây cũng là thói quen
bắt buộc để tới bước deploy (`production-readiness`) không bị rối.

## Checklist trước khi coi một tính năng là "xong"

- [ ] Chạy thử được, không chỉ "AI nói là xong"
- [ ] Xử lý được ít nhất một trường hợp input sai/thiếu
- [ ] Ít nhất một thành viên khác trong đội (ngoài người viết prompt) hiểu được logic
- [ ] Đã commit vào Git với message mô tả rõ

## Khi AI bị kẹt trong vòng lặp sửa lỗi

Nếu đã yêu cầu AI sửa cùng một lỗi 2-3 lần mà không xong: dừng lại, tự đọc lỗi, tóm tắt
lại vấn đề bằng lời của chính mình rồi mới prompt tiếp — đừng paste nguyên lỗi và hy vọng
lần này khác. Thường nguyên nhân là ngữ cảnh AI đang có không đủ hoặc sai — cung cấp lại
đúng phần code liên quan thay vì để AI đoán.

## Liên quan

- Trước bước này: `ai-solution-design` (đã biết AI đóng vai trò gì)
- Song song: `ai-usage-logging` (ghi log ngay khi build, không đợi tới lúc nộp),
  `ai-prompting` (viết prompt hiệu quả), `git-basics` (lưới an toàn khi AI làm hỏng code)
- Sau bước này: `code-review-basics`, `testing-and-validation`, rồi
  `production-readiness`

## Nguồn tham khảo

Cảnh báo về rủi ro của cách làm thiếu hệ thống ("vibe coding") có căn cứ định lượng thật:
một thử nghiệm ngẫu nhiên có đối chứng của METR trên 16 lập trình viên có kinh nghiệm cho
thấy họ chậm hơn 19% khi dùng AI không có phương pháp, dù tự tin sẽ nhanh hơn 24%
(arxiv.org/abs/2507.09089). Phần quy trình 6 bước còn lại là tổng hợp thực tiễn phần mềm
phổ biến, không phải kết quả benchmark riêng cho quy trình này. Chi tiết:
`resources/nguon-tham-khao.md`.

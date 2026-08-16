# Giai đoạn 2 — Build: Chọn công cụ & hiểu kiến trúc cơ bản

*Guide này là phần đào sâu của `skills/ai-solution-design/SKILL.md`,
`skills/ai-assisted-build/SKILL.md`, và `skills/git-basics/SKILL.md` — đọc khi bạn cần hiểu
khái niệm nền trước khi để AI agent dẫn dắt, đặc biệt nếu đội không có ai rành kỹ thuật.*

## AI coding assistant vs AI builder không cần code

Hai nhóm công cụ AI khác nhau về bản chất, dễ gây nhầm lẫn khi chọn:

| Loại | Ví dụ | Khi nào phù hợp | Giới hạn |
|---|---|---|---|
| **AI coding assistant** — AI viết code thật trong project của bạn, bạn (hoặc AI) chạy bằng công cụ lập trình | Claude Code, Cursor, Windsurf, GitHub Copilot | Cần logic tuỳ biến sâu, tích hợp AI phức tạp, đội có ít nhất 1 người đọc hiểu code để kiểm soát chất lượng | Cần biết dùng Git, terminal ở mức cơ bản (xem `skills/git-basics/`); chậm hơn ở giai đoạn đầu vì phải hiểu code trước khi chấp nhận |
| **AI builder không code** — kéo-thả hoặc mô tả bằng lời, AI tự dựng giao diện + logic đơn giản, không thấy code | Lovable, Replit Agent, v0, Bolt.new | Cần dựng nhanh giao diện + luồng cơ bản (CRUD, form, danh sách), đội không có ai biết code, cần MVP demo được sớm | Khó tuỳ biến logic phức tạp/độc đáo; dễ kẹt khi cần tích hợp AI API tuỳ biến sâu hoặc xử lý dữ liệu phức tạp |

Nhiều đội dùng kết hợp: AI builder để dựng khung giao diện nhanh trong 1-2 ngày đầu, sau đó
chuyển sang AI coding assistant khi cần tuỳ biến phần lõi (đặc biệt là điểm chạm AI đã xác
định ở `ai-solution-design`). Không có lựa chọn "đúng tuyệt đối" — phụ thuộc vào năng lực
đội và độ phức tạp của điểm chạm AI cốt lõi.

## Kiến trúc cơ bản, giải thích bằng ví dụ đời thường

Không cần hiểu sâu kỹ thuật để trao đổi hiệu quả với AI coding assistant — chỉ cần nắm 4
khái niệm sau, qua ẩn dụ một cửa hàng:

- **Frontend** = mặt tiền cửa hàng — thứ khách nhìn thấy và bấm vào (giao diện, nút bấm,
  form nhập liệu).
- **Backend** = kho hàng + nhân viên xử lý phía sau — nơi xử lý logic, tính toán, gọi AI,
  kiểm tra quyền truy cập. Khách không nhìn thấy trực tiếp.
- **Database** = sổ ghi chép/kho lưu trữ — nơi lưu thông tin (tài khoản, đơn hàng, dữ liệu
  người dùng) để lần sau còn tra lại được.
- **API** = người giao hàng giữa các bộ phận — chuyển yêu cầu từ frontend tới backend
  ("khách muốn xem danh sách phòng trống"), rồi mang kết quả trả về.

Khi AI đề xuất một kiến trúc, bạn không cần hiểu từng dòng code — chỉ cần biết đặt câu hỏi:
"Phần này chạy ở frontend hay backend? Dữ liệu này có được lưu vào database không, lưu ở
đâu?" — đủ để tham gia quyết định kiến trúc mà không cần biết viết code.

## Git, giải thích bằng một ẩn dụ

Git giống tính năng **"lưu game"** (save point) trong video game: mỗi lần bạn `commit`, đó
là một điểm lưu bạn có thể quay lại bất cứ lúc nào. Không có Git, một lần AI "sửa" làm hỏng
thêm cũng giống như chơi game không lưu — mất tiến độ, phải chơi lại từ đầu. Chi tiết thao
tác cụ thể xem `skills/git-basics/SKILL.md`.

## Prompt trước/sau — ví dụ thực tế

**Ví dụ 1 — thiếu ngữ cảnh**

*Trước:* "Làm cho tôi trang đăng nhập"

*Sau:* "Tạo form đăng nhập bằng email + mật khẩu, dùng component `Input` và `Button` đã có
sẵn trong `src/components/ui/`. Validate email đúng định dạng trước khi gửi request. Khi
sai mật khẩu, hiển thị lỗi 'Email hoặc mật khẩu không đúng' ngay dưới form — không nói rõ
sai cái nào, để tránh lộ thông tin tài khoản nào tồn tại."

**Ví dụ 2 — thiếu tiêu chí chấp nhận**

*Trước:* "Sửa lỗi hiển thị sai giá tiền"

*Sau:* "Giá tiền đang hiển thị `1050000` thay vì `1.050.000 ₫`. Hàm định dạng tiền tệ nằm ở
`src/utils/format.ts`. Sửa để hiển thị đúng định dạng Việt Nam có dấu chấm ngăn cách hàng
nghìn và ký hiệu `₫` ở cuối, áp dụng cho mọi nơi đang gọi hàm này (không chỉ 1 trang)."

**Ví dụ 3 — vibe coding vs có kiểm soát**

*Trước (vibe coding):* "Làm giúp tôi chức năng đặt phòng luôn đi, đủ hết mọi thứ"

*Sau (chia nhỏ theo `skills/ai-assisted-build/`):* "Bước 1: tạo model dữ liệu cho một lượt
đặt phòng (phòng, người đặt, giờ bắt đầu/kết thúc, trạng thái). Chỉ làm phần data model
trước, tôi sẽ xác nhận trước khi sang bước tạo API."

Xem thêm nguyên tắc viết prompt đầy đủ ở `skills/ai-prompting/SKILL.md`.

## Đọc tiếp theo đâu

- `skills/ai-solution-design/SKILL.md` — thiết kế vai trò AI trước khi build
- `skills/ai-assisted-build/SKILL.md` — quy trình build 6 bước có hệ thống
- `skills/git-basics/SKILL.md` — thao tác Git chi tiết
- `guides/03-test/README.md` — sau khi có MVP chạy được, bước tiếp theo là kiểm thử

## Nguồn tham khảo

Nội dung so sánh công cụ và giải thích khái niệm kiến trúc là tổng hợp thực tiễn phổ biến
trong phát triển phần mềm, không dựa trên một nghiên cứu định lượng cụ thể. Xem
`resources/cong-cu-ai-theo-giai-doan.md` để có danh sách công cụ cập nhật và
`resources/nguon-tham-khao.md` cho phần có trích số liệu thật.

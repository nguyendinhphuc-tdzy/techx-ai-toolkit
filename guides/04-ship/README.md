# Giai đoạn 4 — Ship: Deploy giải thích cho người không chuyên kỹ thuật

*Guide này là phần đào sâu của `skills/production-readiness/SKILL.md` — giải thích các
khái niệm kỹ thuật trong checklist đó bằng ẩn dụ, cho người chưa từng deploy sản phẩm.*

## Các khái niệm cơ bản, mỗi cái một ẩn dụ + một lỗi thường gặp

| Khái niệm | Ẩn dụ dễ hiểu | Lỗi thường gặp nếu không hiểu |
|---|---|---|
| **Biến môi trường** (environment variables) | Ngăn kéo riêng chứa "chìa khoá" (API key, mật khẩu) — tách khỏi bản thiết kế (code) để không ai vô tình nhìn thấy khi xem bản thiết kế | Hardcode API key thẳng vào code, commit lên Git công khai → lộ key (xem `skills/security-basics/`) |
| **CORS** (Cross-Origin Resource Sharing) | Nhân viên bảo vệ ở kho hàng (backend) chỉ cho những "địa chỉ" quen mặt vào lấy hàng — nếu frontend gọi từ một địa chỉ chưa được thêm vào danh sách cho phép, bị chặn | Deploy xong, frontend gọi API bị lỗi "blocked by CORS policy" vì quên thêm domain mới vào danh sách cho phép ở backend |
| **Rate limiting** | Giới hạn số lần một khách được vào kho hàng mỗi phút, để một khách không làm sập cả kho vì gọi liên tục | Không đặt giới hạn → một người dùng (hoặc bot) gọi AI API liên tục, hết quota/tốn tiền bất ngờ |
| **Domain/DNS** | Domain là "địa chỉ nhà" dễ nhớ (`tenapp.com`) thay vì phải nhớ "toạ độ GPS" khó nhớ (địa chỉ IP số) — DNS là "danh bạ" dịch địa chỉ nhớ được thành toạ độ thật | Domain chưa trỏ đúng, hoặc chứng chỉ bảo mật (SSL) chưa cấp xong → link không mở được hoặc trình duyệt cảnh báo "không an toàn" |

## Cách đọc log lỗi khi deploy thất bại

Không cần hiểu code để tìm ra vấn đề — hầu hết nền tảng deploy (Vercel, Netlify, Railway,
Render...) đều có mục **"Logs"** hoặc **"Deployments"** trong dashboard. Cách đọc nhanh:

1. Tìm dòng có chữ **`Error`**, **`Failed`**, hoặc màu đỏ — bỏ qua các dòng thông báo bình
   thường (thường màu xám/trắng) phía trên.
2. Đọc dòng đầu tiên của thông báo lỗi trước — thường ngắn gọn nêu đúng vấn đề (ví dụ:
   `Missing environment variable: OPENAI_API_KEY`), các dòng phía dưới thường là chi tiết kỹ
   thuật không cần đọc hết.
3. Copy nguyên văn dòng lỗi đó, đưa cho AI coding assistant kèm câu hỏi "deploy bị lỗi này,
   giúp tôi tìm nguyên nhân" — áp dụng đúng cấu trúc ở `skills/debugging-basics/SKILL.md`
   (mong đợi / thực tế / thông báo lỗi).
4. Lỗi phổ biến nhất khi mới deploy: thiếu biến môi trường (quên thêm vào phần cấu hình của
   nền tảng deploy, dù đã có trong file `.env` ở máy cá nhân — file này không tự động được
   gửi lên khi deploy).

## Giám sát cơ bản sau khi lên production

Không cần công cụ DevOps phức tạp cho một MVP thi đấu. Đủ dùng:

- **Kiểm tra uptime miễn phí**: các dịch vụ như UptimeRobot hoặc BetterStack có gói miễn phí
  tự động ping link sản phẩm mỗi vài phút, báo qua email nếu sản phẩm sập — hữu ích để biết
  trước khi giám khảo tự phát hiện.
- **Theo dõi lỗi runtime**: nhiều nền tảng deploy (Vercel, Railway...) có sẵn tab hiển thị
  lỗi xảy ra sau khi đã lên production, không cần cài thêm công cụ ngoài trong giai đoạn thi
  đấu.
- **Kiểm tra thủ công định kỳ**: đơn giản nhất — trước mỗi mốc quan trọng (nộp bài, đêm
  Chung kết), tự mở link sản phẩm từ một mạng khác (4G thay vì wifi trường) để xác nhận vẫn
  chạy tốt, đúng như bước 5 trong checklist của `skills/production-readiness/`.

## Đọc tiếp theo đâu

- `skills/production-readiness/SKILL.md` — checklist đầy đủ trước khi deploy
- `skills/security-basics/SKILL.md` — vì sao không bao giờ để lộ secret
- `resources/cong-cu-ai-theo-giai-doan.md` — so sánh các nền tảng deploy phổ biến

## Nguồn tham khảo

Phần giải thích khái niệm bằng ẩn dụ là nội dung tự soạn để dễ tiếp cận cho người không
chuyên kỹ thuật, không dựa trên nghiên cứu định lượng. Tên công cụ giám sát (UptimeRobot,
BetterStack) là ví dụ về loại công cụ miễn phí phổ biến, không phải khuyến nghị độc quyền —
tự kiểm tra tính năng/giá tại thời điểm bạn dùng vì các gói miễn phí có thể thay đổi. Số
liệu rủi ro bảo mật liên quan xem `resources/nguon-tham-khao.md`.

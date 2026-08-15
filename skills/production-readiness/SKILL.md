---
name: production-readiness
description: Hướng dẫn đưa một MVP từ máy cá nhân lên môi trường triển khai (deployment) thật mà người dùng ngoài đội thi có thể truy cập được — hạ tầng deploy, chi phí API, xử lý lỗi khi chạy thật, và kiểm tra từ môi trường ngoài. LUÔN dùng khi người dùng hỏi về deploy/triển khai/đưa sản phẩm lên mạng, khi cần LINK TRUY CẬP thật cho Demo MVP, hoặc khi sản phẩm vẫn đang chạy trên "localhost". Khác với testing-and-validation (lo tính năng có ĐÚNG và TRUNG THỰC để demo hay không) — skill này lo sản phẩm có TRUY CẬP ĐƯỢC thật và không sập. KHÔNG dùng cho sự cố lộ secret/API key cụ thể — luôn chuyển sang security-basics cho phần đó. Dùng sau ai-assisted-build và song song/sau testing-and-validation.
---

# Production Readiness — Từ MVP trên máy cá nhân đến sản phẩm dùng được thật

## Vì sao bước này hay bị bỏ qua và hậu quả

Trong áp lực 6 tuần, nhiều đội dừng lại ở "chạy được trên localhost, quay video là xong".
Nhưng Thể lệ cho phép nộp "link truy cập sản phẩm" thay video — một sản phẩm deploy
thật, người ngoài bấm vào dùng được ngay, luôn thuyết phục và chuyên nghiệp hơn hẳn một
video quay màn hình. Agent áp dụng skill này giúp người dùng đi hết quãng đường còn lại,
thường chỉ mất vài giờ nếu code đã sạch từ bước `ai-assisted-build`.

## Checklist tối thiểu trước khi deploy (bắt buộc, không phải "nếu có thời gian")

### 1. Không bao giờ để lộ API key / secrets trong code
- Kiểm tra: không có API key, mật khẩu, connection string nào hardcode trực tiếp trong
  file code đã commit lên Git.
- Dùng biến môi trường (`.env` file, KHÔNG commit file này — thêm vào `.gitignore`).
- Nếu lỡ commit key lên Git public trước đó: coi như key đó đã lộ, phải thu hồi
  (revoke) và tạo key mới ngay, đừng chỉ xoá dòng code.

### 2. Giới hạn chi phí AI API để tránh hoá đơn bất ngờ
- Đặt rate limit / usage cap phía ứng dụng (giới hạn số request/người dùng/phút) —
  không chỉ dựa vào giới hạn mặc định của nhà cung cấp.
- Với API trả phí theo lượng dùng, đặt budget alert hoặc dùng gói free tier có giới hạn
  cứng nếu có thể trong giai đoạn thi.

### 3. Xử lý lỗi để không "sập trắng màn hình"
- Mọi lời gọi tới AI API/backend phải có try-catch và hiển thị thông báo lỗi thân thiện
  cho người dùng, không để màn hình trắng hoặc lỗi kỹ thuật khó hiểu.
- Có trạng thái loading rõ ràng khi đang chờ AI phản hồi (đặc biệt quan trọng vì AI có
  thể mất vài giây).

### 4. Chọn nền tảng deploy phù hợp với stack, không cần phức tạp
Không cần hạ tầng doanh nghiệp cho một MVP thi đấu — nền tảng deploy miễn phí/rẻ, thiết
lập trong vài phút là đủ. Xem `resources/cong-cu-ai-theo-giai-doan.md` để so sánh các
lựa chọn phổ biến (Vercel, Netlify, Railway, Render, Fly.io, Supabase...) theo loại
stack (frontend tĩnh, full-stack, có backend riêng, cần database...).

### 5. Kiểm tra sản phẩm từ một thiết bị/mạng khác, không phải máy đã dùng để build
Nhờ một người ngoài đội mở link và thử — đây là phép thử "có thật sự production không"
đáng tin nhất. Rất nhiều lỗi chỉ xuất hiện khi rời khỏi môi trường quen thuộc của người
build (biến môi trường thiếu, CORS, domain chưa cấu hình).

### 6. Có domain/link ổn định để đưa vào hồ sơ nộp bài
Link phải còn hoạt động tới hết đêm Chung kết — kiểm tra lại các giới hạn của gói miễn
phí (một số nền tảng tự tắt app sau thời gian không hoạt động, cần bấm lại/upgrade).

## Không cần làm (tránh over-engineering cho một MVP thi đấu)

- Không cần Kubernetes, microservices, hay hạ tầng auto-scale phức tạp.
- Không cần CI/CD pipeline đầy đủ — commit và deploy thủ công/tự động đơn giản là đủ.
- Không cần viết test coverage 100% — ưu tiên test các luồng chính đã nêu ở
  `testing-and-validation`.

## Output kỳ vọng

- Một link truy cập sản phẩm thật, hoạt động ổn định, không lộ secrets
- Ghi chú ngắn về giới hạn đã biết của bản deploy (đưa vào Báo cáo sản phẩm nếu có)

## Liên quan

- Trước bước này: `ai-assisted-build`, `testing-and-validation`, `security-basics`
- Xem thêm: `guides/04-ship/` để hiểu sâu hơn từng khái niệm (biến môi trường, CORS,
  rate limiting...) nếu chưa quen thuật ngữ kỹ thuật.

## Nguồn tham khảo

Checklist bảo mật (mục 1-2) có căn cứ định lượng thật: một khảo sát của Veracode trên
hơn 100 model AI cho thấy 45% code AI sinh ra chứa lỗ hổng thuộc OWASP Top 10; một đợt
quét của Escape.tech trên 5.600 ứng dụng vibe-coded công khai phát hiện 400 secret bị lộ
trực tiếp. Chi tiết đầy đủ và các nguồn khác: `resources/nguon-tham-khao.md`, đào sâu
hơn ở `skills/security-basics/`.

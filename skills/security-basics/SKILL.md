---
name: security-basics
description: Hướng dẫn các thực hành bảo mật tối thiểu khi build sản phẩm với AI coding assistant — chống lộ API key/secrets, chống lỗ hổng phổ biến trong code AI sinh ra. LUÔN dùng khi người dùng chuẩn bị commit code lên Git, khi chuẩn bị deploy, khi tích hợp API key/thông tin xác thực, hoặc khi review code AI vừa sinh ra có liên quan tới dữ liệu người dùng/thanh toán/xác thực.
---

# Security Basics — An toàn tối thiểu khi build với AI

## Đây không phải rủi ro lý thuyết — có số liệu thật

Một khảo sát của Veracode kiểm tra hơn 100 model AI trên 80 tác vụ lập trình phát hiện
45% code do AI sinh ra chứa lỗ hổng thuộc OWASP Top 10 (nhóm lỗ hổng bảo mật web phổ
biến và nguy hiểm nhất). Một đợt quét của Escape.tech trên 5.600 ứng dụng "vibe-coded"
đã triển khai công khai phát hiện 2.000 lỗ hổng nghiêm trọng và 400 secret (API key, mật
khẩu) bị lộ trực tiếp. Đây là lý do skill này tồn tại — không phải để "làm khó" tốc độ
build, mà vì tốc độ không có nghĩa lý gì nếu sản phẩm lộ dữ liệu người dùng. (Nguồn chi
tiết: `resources/nguon-tham-khao.md`)

## Checklist bắt buộc, áp dụng trước khi commit hoặc deploy

### 1. Không bao giờ hardcode secret trong code
- API key, mật khẩu, connection string luôn nằm trong biến môi trường (`.env`), **không
  bao giờ** trong file code sẽ commit.
- Thêm `.env` vào `.gitignore` **ngay từ commit đầu tiên**, không phải sau khi đã lỡ
  commit.
- Nếu lỡ commit secret lên Git (kể cả private repo): coi secret đó đã lộ, thu hồi (revoke)
  và tạo key mới ngay — xoá dòng code không đủ, vì secret vẫn còn trong lịch sử Git.

### 2. Rà soát code AI sinh ra liên quan tới xác thực/phân quyền
Đây là nhóm lỗi phổ biến nhất trong code AI sinh ra theo các khảo sát bảo mật gần đây.
Tự hỏi với mỗi API endpoint: "Ai được phép gọi cái này? AI có tự thêm kiểm tra quyền
chưa, hay mặc định cho phép mọi người?"

### 3. Không cài gói thư viện AI đề xuất mà không kiểm tra
AI đôi khi đề xuất tên thư viện không tồn tại hoặc gợi ý sai tên gói (dễ bị lợi dụng bởi
gói giả mạo cùng tên). Trước khi cài, kiểm tra gói đó tồn tại thật trên npm/PyPI chính
thức, có lượng tải xuống hợp lý, và tên chính xác đúng như dự định.

### 4. Cẩn trọng với dữ liệu người dùng nhạy cảm
Nếu sản phẩm thu thập email, số điện thoại, hoặc bất kỳ dữ liệu cá nhân nào: không log
(ghi log) các dữ liệu này ra console/file log dùng chung, không lưu ở dạng đọc được trực
tiếp nếu là mật khẩu (phải hash), và giới hạn ai truy cập được database.

### 5. Không copy-paste dữ liệu nhạy cảm vào prompt AI
Không dán API key, mật khẩu thật, hoặc dữ liệu người dùng thật vào cửa sổ chat với AI để
"nhờ debug" — dùng dữ liệu giả lập thay thế.

## Checklist nhanh trước khi coi một tính năng liên quan tới dữ liệu là "xong"

- [ ] Không có secret nào hardcode trong code đã commit
- [ ] Endpoint có kiểm tra quyền truy cập, không mặc định public
- [ ] Thư viện mới cài đã kiểm tra tồn tại thật, đúng tên
- [ ] Không log dữ liệu nhạy cảm ra nơi nhiều người truy cập được
- [ ] Đã thử tự truy cập bằng tài khoản/quyền khác để xem có bị lộ dữ liệu không nên
      thấy hay không

## Cảnh báo cho agent

Nếu người dùng chuẩn bị commit hoặc deploy mà chưa từng nhắc tới biến môi trường, chủ
động dừng lại hỏi trước — đây là loại lỗi khó phát hiện bằng mắt thường khi demo chạy
bình thường, chỉ lộ ra khi có người cố tình khai thác.

## Nguồn tham khảo

Xem `resources/nguon-tham-khao.md` — số liệu Veracode, Escape.tech, GitGuardian, Georgia
Tech Vibe Security Radar đều dẫn nguồn cụ thể tại đó.

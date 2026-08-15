# Đọc và sử dụng GitHub — hướng dẫn cho người mới

*Guide này giả định bạn chưa từng dùng GitHub. Nếu bạn đã quen, có thể đọc lướt phần
"Những tính năng cần lưu ý" ở cuối.*

## GitHub là gì, và vì sao repo này nằm ở đó

GitHub là nơi lưu trữ code và tài liệu theo từng **repository** (gọi tắt là "repo") —
hiểu đơn giản là một thư mục dự án có lưu lại toàn bộ lịch sử thay đổi, để nhiều người
cùng làm việc mà không ghi đè lên nhau, và ai cũng xem lại được "trước đây nó như thế
nào". Toolkit này (skills, guides, templates) được lưu trên GitHub để: dễ chia sẻ, dễ cập
nhật, và bạn có thể `git clone` thẳng về máy để dùng thay vì tải file lẻ tẻ.

## Đọc một repo GitHub — các thành phần cần biết

Khi mở một trang repo (ví dụ `github.com/<tổ-chức>/techx-ai-toolkit`), bạn sẽ thấy:

- **README.md** — tự động hiển thị ngay trên trang chính của repo. Đây luôn là nơi đầu
  tiên nên đọc — nó giải thích repo dùng để làm gì và bắt đầu từ đâu.
- **Danh sách file/thư mục** — giống Windows Explorer/Finder, bấm vào để mở.
- **Tab "Code"** — mặc định đang mở, hiện toàn bộ nội dung repo.
- **Tab "Issues"** — nơi báo lỗi, đề xuất thay đổi, hoặc đặt câu hỏi về repo. Mỗi issue
  là một cuộc thảo luận riêng, có thể đóng (closed) khi đã giải quyết xong.
- **Tab "Pull requests" (PR)** — nơi đề xuất thay đổi vào code/tài liệu, chờ người khác
  xem xét (review) trước khi gộp vào bản chính thức. Đây là cách làm việc nhóm chuẩn
  trên GitHub, không phải sửa trực tiếp vào bản chính.
- **Nút "Star"** — giống "lưu/thích" một repo. Số sao cao thường (không luôn luôn) là
  tín hiệu repo được nhiều người tin dùng — xem thêm
  `guides/00-overview/tim-va-danh-gia-skill-tren-github.md` để biết cách đọc tín hiệu
  này đúng cách, không bị đánh lừa.
- **"Fork"** — tạo một bản sao của repo về tài khoản của bạn để tự chỉnh sửa thoải mái mà
  không ảnh hưởng bản gốc. Thường dùng khi bạn muốn đóng góp vào một repo bạn không có
  quyền chỉnh sửa trực tiếp.
- **"Commits" / lịch sử thay đổi** — bấm vào để xem ai đã thay đổi gì, khi nào. Mỗi commit
  có một message mô tả ngắn gọn thay đổi đó.
- **Branches** — các "nhánh" phát triển song song. Nhánh `main` (hoặc `master`) thường là
  bản chính thức, ổn định.

## Thuật ngữ hay gặp, giải thích ngắn gọn

| Thuật ngữ | Nghĩa đơn giản |
|---|---|
| Repository / repo | Một dự án, gồm code/tài liệu + lịch sử thay đổi |
| Clone | Tải toàn bộ repo về máy, kèm theo lịch sử, để làm việc offline |
| Commit | Một "điểm lưu" thay đổi, kèm mô tả ngắn |
| Push | Đẩy commit từ máy bạn lên GitHub |
| Pull | Tải thay đổi mới nhất từ GitHub về máy bạn |
| Branch | Một nhánh phát triển riêng, tách khỏi bản chính để không ảnh hưởng nhau |
| Pull Request (PR) | Đề xuất gộp thay đổi từ một nhánh vào nhánh chính, có thể được review trước |
| Fork | Bản sao độc lập của một repo, dưới tài khoản của bạn |
| Issue | Một mục ghi lỗi/đề xuất/câu hỏi, theo dõi được tới khi giải quyết xong |
| Collaborator | Người được cấp quyền chỉnh sửa trực tiếp trên repo |
| `.gitignore` | File liệt kê những gì **không** nên đưa lên GitHub (ví dụ file chứa mật khẩu) |
| README.md | File giới thiệu, luôn hiện ngay trên trang chính của repo |

## Hai cách sử dụng GitHub: qua giao diện web hay qua máy tính

### Cách 1 — Chỉ cần đọc, không cần cài gì
Nếu bạn chỉ muốn đọc skill/guide, tải file về xem, hoàn toàn có thể làm ngay trên trình
duyệt web: mở file cần đọc, hoặc bấm nút **Code → Download ZIP** để tải cả repo về mà
không cần biết dùng lệnh Git.

### Cách 2 — Muốn chỉnh sửa, đóng góp, hoặc đồng bộ liên tục
Cần cài **Git** (công cụ dòng lệnh) hoặc **GitHub Desktop** (ứng dụng có giao diện, dễ
dùng hơn cho người mới, tải tại desktop.github.com). Với GitHub Desktop, các thao tác
clone/commit/push/pull đều có nút bấm, không cần gõ lệnh.

Nếu đội bạn dùng AI coding agent (Claude Code, Cursor...), bạn có thể để agent chạy các
lệnh Git thay bạn — chỉ cần mô tả bạn muốn làm gì bằng lời, xem ví dụ trong
`skills/git-basics/SKILL.md`.

## Những tính năng cần lưu ý

### 1. GitHub Codespaces — chạy code ngay trên trình duyệt
Không cần cài gì trên máy, mở thẳng một môi trường code đầy đủ trong trình duyệt. Hữu
ích nếu máy bạn yếu hoặc muốn thử nhanh không cần setup.

### 2. GitHub Pages — host một trang web tĩnh miễn phí thẳng từ repo
Nếu sản phẩm của bạn chỉ là frontend tĩnh (không cần backend), có thể bật GitHub Pages
trong **Settings → Pages** để có link truy cập công khai miễn phí — một lựa chọn khác
ngoài các nền tảng đã liệt kê ở `resources/cong-cu-ai-theo-giai-doan.md`.

### 3. GitHub Actions — tự động hoá (nâng cao, không bắt buộc cho MVP thi đấu)
Cho phép tự động chạy test, deploy... mỗi khi có thay đổi mới. Không cần thiết cho một
MVP 6 tuần, nhưng nếu đội có người rành kỹ thuật muốn tìm hiểu thêm, đây là hướng nâng
cao đáng biết.

### 4. Bảo vệ nhánh chính (Branch protection) — nên bật nếu nhiều người cùng code
Trong **Settings → Branches**, có thể đặt quy tắc yêu cầu mọi thay đổi vào nhánh `main`
phải qua Pull Request thay vì push thẳng — giảm rủi ro một người vô tình làm hỏng code
của cả đội.

### 5. Quyền riêng tư (Private/Public) và Collaborators
Repo Private chỉ người được mời (collaborator) mới xem/sửa được; Public thì ai cũng xem
được. Cách thêm collaborator và cân nhắc Private/Public cho riêng repo toolkit này đã có
hướng dẫn chi tiết ở phần trao đổi trước — nguyên tắc chung: **không bao giờ để repo
Public nếu trong lịch sử commit từng có file chứa API key/mật khẩu thật** (xem
`skills/security-basics/SKILL.md`).

### 6. `.gitignore` — tính năng nhỏ nhưng quan trọng nhất về bảo mật
File này liệt kê những gì Git sẽ **không bao giờ** đưa lên GitHub dù bạn gõ lệnh thêm
file — luôn tạo file này **trước khi** commit lần đầu, không phải sau. Tối thiểu nên có
dòng `.env` để không bao giờ lỡ đưa API key lên.

## Nếu bạn mới hoàn toàn — thứ tự nên học

1. Đọc README của một repo bất kỳ để quen giao diện (thử ngay chính repo toolkit này)
2. Tập `git clone` một repo về máy
3. Tập sửa một file nhỏ, `commit`, rồi `push` lên
4. Tập tạo một Pull Request để hiểu quy trình làm việc nhóm chuẩn
5. Khi đã quen, đọc `skills/git-basics/SKILL.md` để nắm quy tắc dùng Git khi build với AI

## Liên quan

- `skills/git-basics/SKILL.md` — quy tắc Git thực dụng khi build với AI coding assistant
- `skills/security-basics/SKILL.md` — vì sao không bao giờ để lộ secret lên GitHub
- `guides/00-overview/tim-va-danh-gia-skill-tren-github.md` — cách tự tìm và đánh giá skill/repo khác trên GitHub

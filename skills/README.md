# Cách gắn Skills vào AI Agent của bạn

Mỗi thư mục con trong `skills/` là một **skill** độc lập: một file `SKILL.md` (bắt buộc)
kèm tài liệu tham khảo (nếu có). Skill không phải là prompt để copy-paste một lần — đây
là bộ hướng dẫn agent tự đọc và áp dụng mỗi khi bạn làm việc liên quan tới chủ đề đó.

## Cài đặt nhanh (Claude Code, Codex)

```bash
git clone <link-repo-này>
cd techx-ai-toolkit
./setup.sh
```

Mặc định script copy toàn bộ skill vào `~/.claude/skills` (dùng được ở mọi project trên
máy bạn). Đổi đích nếu cần:

```bash
SKILLS_DEST="$HOME/.codex/skills" ./setup.sh   # Codex
SKILLS_DEST="./.claude/skills" ./setup.sh      # chỉ cài cho project hiện tại
```

Chạy lại `./setup.sh` sau mỗi lần `git pull` để lấy bản skill mới nhất. Khởi động lại
agent (hoặc mở session mới) sau khi cài — agent sẽ tự chọn đúng skill dựa trên việc bạn
đang làm, không cần gọi tên skill theo cách thủ công.

## Gắn vào Claude (claude.ai / Claude Cowork) — không dùng được setup.sh

- **claude.ai**: nếu tổ chức của bạn bật tính năng skill catalog, có thể "Add skill" trực
  tiếp từ file. Nếu không, copy toàn bộ nội dung `SKILL.md` vào phần custom
  instructions / Project knowledge của Claude.

## Gắn vào Cursor

Dán nội dung `SKILL.md` vào `.cursor/rules/<tên-skill>.mdc` (Cursor Rules). Phần
frontmatter (`name`, `description`) chuyển thành mô tả rule; phần thân giữ nguyên làm
nội dung rule.

## Gắn vào ChatGPT (Custom GPT / Project)

Dán nội dung `SKILL.md` vào phần **Instructions** của Custom GPT, hoặc upload làm file
kiến thức (knowledge file) trong ChatGPT Projects và nhắc trong instructions: "luôn đọc
file [tên] trước khi trả lời việc liên quan tới [chủ đề]".

## Gắn vào công cụ khác (Lovable, Replit Agent, v0, Windsurf...)

Hầu hết các công cụ này đều có ô "system prompt" / "project instructions" / "rules"
riêng — dán nguyên phần thân `SKILL.md` (bỏ frontmatter) vào đó. Nếu công cụ giới hạn độ
dài, ưu tiên giữ lại phần **Nguyên tắc cốt lõi** và **Quy trình từng bước**, có thể bỏ
bớt phần ví dụ.

## Nếu bạn không dùng agent nào cả

Không sao — đọc thẳng `SKILL.md` như một checklist thao tác bằng tay, hoặc đọc guide
tương ứng trong `guides/` (viết dễ hiểu hơn, có giải thích).

## Danh sách skills

| Skill | Giai đoạn | Dùng khi nào |
|---|---|---|
| `problem-framing/` | Idea | Trước khi viết bất kỳ dòng đề xuất giải pháp nào |
| `ai-solution-design/` | Idea → Build | Khi quyết định AI sẽ đóng vai trò gì trong sản phẩm |
| `ai-prompting/` | Build | Khi chuẩn bị yêu cầu AI làm việc, hoặc output không đúng ý |
| `ai-assisted-build/` | Build | Khi bắt đầu dùng AI để viết code / dựng MVP |
| `git-basics/` | Build | Ngay từ dòng code đầu tiên — lưới an toàn khi AI làm hỏng code |
| `debugging-basics/` | Build | Khi có lỗi và chưa biết mô tả chính xác |
| `security-basics/` | Build → Ship | Trước khi commit, trước khi deploy, khi làm việc với dữ liệu người dùng |
| `code-review-basics/` | Build → Test | Trước khi coi một tính năng do AI viết là "xong" |
| `testing-and-validation/` | Test | Trước khi coi MVP là "xong" |
| `production-readiness/` | Ship | Trước khi đưa sản phẩm ra khỏi máy cá nhân |
| `ai-usage-logging/` | Xuyên suốt | Ngay từ buổi đầu tiên dùng AI, không phải lúc sắp nộp bài |
| `benchmark-literacy/` | Xuyên suốt | Khi so sánh/chọn model hoặc công cụ AI dựa trên số liệu |

Muốn tìm thêm skill ngoài danh sách này? Xem
`guides/00-overview/tim-va-danh-gia-skill-tren-github.md` để tự tìm và đánh giá skill từ
cộng đồng.

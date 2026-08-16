# Nguồn tham khảo

Toàn bộ nguồn dùng để viết nội dung trong repo này, để bạn tự kiểm tra lại — không có
nguồn nào trong repo được tự bịa ra. Ngày truy cập: 08/2026. Vì hệ sinh thái AI thay đổi
rất nhanh, các con số (sao GitHub, thứ hạng benchmark...) sẽ lệch dần theo thời gian —
luôn ưu tiên kiểm tra lại tại nguồn gốc thay vì tin số liệu đã cũ trong file này.

## Repo & danh sách skill

| Nguồn | Vai trò | Link |
|---|---|---|
| `anthropics/skills` | Repo skill chính chủ của Anthropic — chuẩn tham khảo về format SKILL.md | https://github.com/anthropics/skills |
| `agentskills.io` | Trang chuẩn mở "Agent Skills", định nghĩa format và danh sách công cụ hỗ trợ | https://agentskills.io |
| `Project-X-Vietnam/project-x-vibe-skills` | Repo skill của chương trình Project X Vietnam — tham khảo cấu trúc cho cuộc thi tương tự | https://github.com/Project-X-Vietnam/project-x-vibe-skills |
| `obra/superpowers` | Thư viện skill cộng đồng, 20+ skill được mô tả "battle-tested" (TDD, debugging, collaboration) | https://github.com/obra/superpowers |
| `ComposioHQ/awesome-claude-skills` | Danh sách tổng hợp lớn nhất, 1000+ skill | https://github.com/ComposioHQ/awesome-claude-skills |
| `travisvn/awesome-claude-skills` | Danh sách tổng hợp tập trung vào Claude Code | https://github.com/travisvn/awesome-claude-skills |
| `subinium/awesome-claude-code` | Danh sách công cụ/skill/MCP server cho Claude Code | https://github.com/subinium/awesome-claude-code |

## Benchmark đo năng lực model AI

| Benchmark | Đo gì | Link |
|---|---|---|
| SWE-bench (Verified & Pro) | Sửa lỗi thật trên GitHub repo | https://swebench.com |
| LMArena (trước là LMSYS Chatbot Arena) | Con người bình chọn ẩn danh giữa các câu trả lời | https://lmarena.ai |
| Artificial Analysis Intelligence Index | Tổng hợp 10 benchmark chuẩn hoá | https://artificialanalysis.ai |
| Aider Polyglot leaderboard | Khả năng sửa code dạng diff qua nhiều ngôn ngữ | https://aider.chat/docs/leaderboards |
| LiveCodeBench | Bài lập trình thi đấu mới, tránh nhiễm dữ liệu train | https://livecodebench.github.io |

## Sách/phương pháp luận tham khảo (không phải số liệu định lượng)

| Nguồn | Vai trò | Link |
|---|---|---|
| *The Mom Test* — Rob Fitzpatrick | Kỹ thuật phỏng vấn người dùng tránh câu hỏi dẫn dắt, dùng trong `guides/01-idea/README.md` | https://www.momtestbook.com |

## Số liệu về rủi ro "vibe coding" (dùng để xây `skills/security-basics`)

| Phát hiện | Nguồn |
|---|---|
| Thử nghiệm ngẫu nhiên có đối chứng (RCT) với 16 lập trình viên, 246 tác vụ thật: chậm hơn 19% khi dùng AI, dù trước đó tự tin sẽ nhanh hơn 24% | METR, "Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity" — https://arxiv.org/abs/2507.09089 |
| Kiểm tra hơn 100 LLM trên 80 tác vụ lập trình: 45% code AI sinh ra chứa lỗ hổng thuộc OWASP Top 10 | Veracode, "2025 GenAI Code Security Report" |
| Quét 5.600 ứng dụng vibe-coded đã triển khai công khai: 2.000 lỗ hổng nghiêm trọng, 400 secret bị lộ, 175 trường hợp lộ dữ liệu cá nhân | Escape.tech, dẫn lại qua Forbes (03/2026) — https://www.forbes.com/sites/jodiecook/2026/03/20/vibe-coding-has-a-massive-security-problem/ |
| Commit có hỗ trợ của Claude Code làm lộ secret với tần suất cao hơn gấp đôi so với commit hoàn toàn do con người viết | GitGuardian, "State of Secrets Sprawl 2026", dẫn lại qua IBM — https://www.ibm.com/think/insights/vibe-coding-security-risks |
| Georgia Tech "Vibe Security Radar" — theo dõi CVE (lỗ hổng bảo mật đã công bố chính thức) được xác định trực tiếp do code AI sinh ra | Georgia Tech Systems Software & Security Lab |

## Điểm quan trọng cần hiểu khi dùng bảng trên

1. **Benchmark đo model, không đo skill.** Không có benchmark nào trong repo này (hay
   ở bất kỳ đâu, tính tới thời điểm viết) đo lường hiệu quả của một SKILL.md cụ thể.
   "Skill tốt" hiện chỉ được đánh giá gián tiếp qua tín hiệu cộng đồng (sao, ai
   maintain, có test kèm theo không) — xem
   `guides/00-overview/tim-va-danh-gia-skill-tren-github.md`.
2. **Số liệu về rủi ro vibe coding ở trên là để cảnh báo, không phải để hù doạ.** Mục
   đích là để thí sinh hiểu: nguy cơ này thật và đã được đo lường, nên các bước kiểm
   tra trong `skills/security-basics/` không phải thủ tục thừa.
3. **Ngành này thay đổi theo tháng, không phải theo năm.** Bảng xếp hạng benchmark model
   hôm nay có thể lỗi thời trong vài tháng — luôn kiểm tra lại tại nguồn gốc.

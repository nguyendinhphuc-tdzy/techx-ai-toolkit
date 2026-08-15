# TechX AI Toolkit — Idea → Build → Test → Ship with AI

Bộ tài liệu và skills dùng cho cuộc thi TechX (UEH), giúp thí sinh đi hết hành trình
**từ ý tưởng đến sản phẩm production thật** khi làm việc với AI — có hệ thống, có kiểm
chứng, không phải "viết prompt và vibe coding" tùy hứng.

## Cài đặt

```bash
git clone <link-repo-này>
cd techx-ai-toolkit
./setup.sh
```

Lệnh trên copy toàn bộ skill vào `~/.claude/skills`, agent (Claude Code) sẽ tự chọn đúng
skill dựa trên việc bạn đang làm — không cần gọi tên skill thủ công. Chi tiết và tuỳ chọn
đích cài đặt khác (Codex, chỉ cài cho 1 project...) xem `skills/README.md`.

Repo có hai loại nội dung, dùng song song:

| Thư mục | Dành cho | Mục đích |
|---|---|---|
| `skills/` | **AI agent** (Claude, Cursor, ChatGPT có custom instructions...) | File hướng dẫn agent cách tư duy và hành động đúng ở từng bước, gắn trực tiếp vào agent để agent tự áp dụng khi hỗ trợ bạn |
| `guides/` | **Con người** (thí sinh đọc) | Giải thích khái niệm, ví dụ, lý do vì sao — để bạn hiểu *tại sao* làm vậy, không chỉ làm theo |
| `templates/` | Thí sinh | Biểu mẫu áp dụng thẳng vào hồ sơ nộp bài theo Thể lệ cuộc thi |
| `resources/` | Thí sinh | Công cụ AI theo giai đoạn, bảng nguồn tham khảo có trích dẫn, cách đọc benchmark |

> **Về tính xác thực của nội dung:** phần lớn nội dung trong `skills/` và `guides/` là
> tổng hợp thực tiễn (best practice) về phát triển sản phẩm/phần mềm, không phải kết quả
> của một benchmark đo lường riêng cho "skill" — hiện chưa tồn tại benchmark công khai
> nào đo hiệu quả của một SKILL.md cụ thể. Ở những chỗ có số liệu định lượng thật (rủi ro
> bảo mật, năng suất khi dùng AI...), repo trích nguồn cụ thể trong
> `resources/nguon-tham-khao.md`. Đừng nhầm hai loại nội dung này với nhau.

## Hành trình 4 giai đoạn

Repo bám theo đúng 4 giai đoạn của Thể lệ cuộc thi:

```
1. IDEA   → Nhận diện đúng vấn đề, đúng người dùng, trước khi nghĩ tới AI
2. BUILD  → Thiết kế giải pháp có AI, dựng MVP có hệ thống
3. TEST   → Kiểm chứng sản phẩm với người dùng thật, không tự huyễn hoặc demo
4. SHIP   → Đưa MVP lên production: bảo mật, triển khai, vận hành thật
```

Mỗi giai đoạn có: 1) một hoặc nhiều `skills/*.SKILL.md`, 2) guide tương ứng trong
`guides/`, 3) checklist để tự chấm trước khi nộp bài.

## Bắt đầu từ đâu?

- **Chưa từng dùng AI để build sản phẩm** → đọc `guides/00-overview/hanh-trinh-idea-to-production.md` trước tiên.
- **Muốn biết mình còn thiếu năng lực gì để từ "vibe coder" thành "builder" thật** → đọc `guides/00-overview/tu-vibe-coder-den-builder.md`.
- **Đội đã có agent (Claude Code, Codex...)** → chạy `./setup.sh` để cài toàn bộ skill vào agent tự động (xem `skills/README.md` để biết chi tiết và cách gắn thủ công cho Cursor/ChatGPT).
- **Muốn tự tìm thêm skill/repo trên GitHub ngoài repo này** → đọc `guides/00-overview/tim-va-danh-gia-skill-tren-github.md`.
- **Sắp nộp hồ sơ Sơ loại / Bán kết / Chung kết** → vào thẳng `templates/` để lấy mẫu đúng chuẩn Thể lệ.
- **Chưa biết chọn công cụ AI nào** → xem `resources/cong-cu-ai-theo-giai-doan.md`.
- **Cần so sánh model/công cụ AI dựa trên benchmark thật** → xem `resources/benchmark-va-cach-doc.md`.

## Nguyên tắc xuyên suốt của toolkit này

1. **Vấn đề trước, công cụ sau.** Không có skill nào trong đây bắt đầu bằng "mở AI lên và
   gõ prompt". Luôn bắt đầu từ: vấn đề gì, của ai, giá trị AI tạo ra là gì.
2. **AI là cộng tác viên có giám sát, không phải người quyết định.** Mọi quyết định về
   phạm vi, kiến trúc, đánh đổi kỹ thuật vẫn phải do đội thi hiểu và chịu trách nhiệm —
   đây cũng là điều Ban Giám khảo sẽ hỏi trực tiếp ở phần phản biện.
3. **MVP không phải là "cái chạy được trên máy mình".** Một sản phẩm chỉ tính là hoàn
   thiện khi người dùng thật ngoài đội có thể dùng được, không cần đội thi đứng cạnh
   giải thích.
4. **Ghi lại quá trình dùng AI ngay từ đầu**, đừng để tới lúc nộp Báo cáo sử dụng AI mới
   nhớ lại — dùng `templates/bao-cao-su-dung-ai-template.md` để ghi nhật ký theo tuần.

## Cấu trúc chi tiết

```
techx-ai-toolkit/
├── README.md                              (file này)
├── skills/
│   ├── README.md                          — cách gắn skills vào agent
│   ├── problem-framing/SKILL.md           — Idea: nhận diện vấn đề
│   ├── ai-solution-design/SKILL.md        — Idea → Build: thiết kế giải pháp có AI
│   ├── ai-prompting/SKILL.md              — Build: viết prompt hiệu quả
│   ├── ai-assisted-build/SKILL.md         — Build: build MVP có hệ thống, không vibe code
│   ├── git-basics/SKILL.md                — Build: version control, lưới an toàn
│   ├── debugging-basics/SKILL.md          — Build: mô tả lỗi chính xác
│   ├── security-basics/SKILL.md           — Build → Ship: chống lộ secret, lỗ hổng phổ biến
│   ├── code-review-basics/SKILL.md        — Build → Test: đọc hiểu code trước khi chấp nhận
│   ├── testing-and-validation/SKILL.md    — Test: kiểm thử với người dùng thật
│   ├── production-readiness/SKILL.md      — Ship: từ MVP lên production
│   ├── ai-usage-logging/SKILL.md          — Xuyên suốt: ghi log dùng AI đúng chuẩn nộp bài
│   └── benchmark-literacy/SKILL.md        — Xuyên suốt: đọc benchmark không bị đánh lừa
├── guides/
│   ├── 00-overview/
│   │   ├── hanh-trinh-idea-to-production.md
│   │   ├── tu-vibe-coder-den-builder.md
│   │   └── tim-va-danh-gia-skill-tren-github.md
│   ├── 01-idea/...
│   ├── 02-build/...
│   ├── 03-test/...
│   └── 04-ship/...
├── templates/
│   ├── ho-so-so-loai-template.md
│   ├── bao-cao-san-pham-template.md
│   ├── bao-cao-su-dung-ai-template.md
│   └── checklist-truoc-khi-nop.md
└── resources/
    ├── cong-cu-ai-theo-giai-doan.md
    ├── benchmark-va-cach-doc.md            — cách đọc benchmark model AI mà không bị đánh lừa
    └── nguon-tham-khao.md                  — toàn bộ nguồn đã dùng, có link để tự kiểm chứng
```

Repo sẽ được bổ sung dần theo từng giai đoạn của cuộc thi. Đóng góp/chỉnh sửa: mở PR
hoặc trao đổi trực tiếp với đội TechX phụ trách nội dung.

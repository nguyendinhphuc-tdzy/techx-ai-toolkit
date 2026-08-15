# Từ Vibe Coder đến Builder — lộ trình năng lực

"Vibe coder" không phải một lời chê — hầu như ai cũng bắt đầu từ đó. Vấn đề không phải là
việc dùng AI để viết code nhanh, mà là dừng lại ở đó. Guide này liệt kê cụ thể năng lực
cần có để đi từ "gõ prompt, thấy chạy là xong" thành "hiểu và chịu trách nhiệm được cho
sản phẩm mình làm ra" — mỗi năng lực có lý do cụ thể, không phải để "cho có vẻ chuyên
nghiệp".

## Vì sao khoảng cách này quan trọng, có số liệu

Một thử nghiệm ngẫu nhiên có đối chứng (RCT) của METR — hình thức nghiên cứu chặt chẽ
nhất, giống thử nghiệm thuốc lâm sàng — theo dõi 16 lập trình viên có kinh nghiệm hoàn
thành 246 tác vụ thật. Kết quả: họ **chậm hơn 19%** khi được phép dùng AI, dù trước đó họ
dự đoán sẽ nhanh hơn 24%. Ngay cả sau khi trải nghiệm sự chậm lại đó, họ vẫn *cảm thấy*
mình đã nhanh hơn. (Nguồn: arxiv.org/abs/2507.09089 — xem thêm
`resources/nguon-tham-khao.md`)

Bài học rút ra không phải "AI vô dụng" — mà là: **dùng AI không có phương pháp có thể
khiến bạn chậm hơn và tự tin sai về tốc độ của mình**. Phần lớn khoảng cách tới từ việc
không đọc kỹ code AI sinh ra, phải sửa đi sửa lại vì hiểu sai ý, và mất thời gian debug
những lỗi lẽ ra một người hiểu code sẽ tránh được từ đầu.

## Lộ trình theo 3 mức ưu tiên

### Mức 1 — Phải có trước khi bắt đầu build (không thương lượng)

| Năng lực | Vì sao bắt buộc |
|---|---|
| Đọc hiểu code ở mức cơ bản (không cần viết giỏi) | Nếu không đọc được code AI viết, không ai trong đội chịu trách nhiệm được khi có lỗi — đây là yêu cầu ngầm của Thể lệ khi nói "phần đóng góp về tư duy, quyết định của con người" |
| Git cơ bản (commit, branch, revert) | Không có Git, một lần AI "sửa" làm hỏng thêm nghĩa là build lại từ đầu — xem `skills/git-basics/` |
| Nhận biết secret/API key và không để lộ | 45% code AI sinh ra trong một khảo sát của Veracode chứa lỗ hổng OWASP Top 10; nhiều vụ lộ secret thực tế đã xảy ra với sản phẩm vibe-coded — xem `skills/security-basics/` |
| Viết được một mô tả vấn đề rõ ràng bằng lời của chính mình | Nếu không diễn đạt được vấn đề, không thể prompt AI đúng, và không thể trả lời BGK khi bị hỏi — xem `skills/problem-framing/` |

### Mức 2 — Nên có trước vòng Bán kết

| Năng lực | Vì sao cần |
|---|---|
| Viết prompt có ngữ cảnh, có tiêu chí chấp nhận | Giảm số vòng lặp sửa lỗi — xem `skills/ai-prompting/` |
| Mô tả lỗi chính xác thay vì paste nguyên lỗi và đoán | Giúp AI (và chính bạn) tìm đúng nguyên nhân thay vì sửa vòng vòng — xem `skills/debugging-basics/` |
| Đọc review code cơ bản: nhận ra logic thiếu case biên, xử lý lỗi thiếu | Cần thiết trước khi coi một tính năng là "xong" — xem `skills/code-review-basics/` |
| Hiểu khái niệm deploy, biến môi trường, rate limit ở mức khái niệm | Để không kẹt mãi ở "chạy trên máy tôi" — xem `skills/production-readiness/` |

### Mức 3 — Nâng cao, tạo lợi thế cạnh tranh thật sự ở Chung kết

| Năng lực | Vì sao tạo lợi thế |
|---|---|
| Đọc và diễn giải đúng một bảng benchmark khi so sánh công cụ/model | Thể hiện lựa chọn công nghệ có căn cứ, không phải "nghe hot" — xem `skills/benchmark-literacy/` |
| Tự tìm và đánh giá skill/tool mới trên GitHub khi gặp bài toán lạ | Giúp đội không bị giới hạn bởi những gì repo này đã liệt kê sẵn — xem `guides/00-overview/tim-va-danh-gia-skill-tren-github.md` |
| Thiết kế được thử nghiệm so sánh "có AI / không AI" cho tính năng cốt lõi | Bằng chứng thuyết phục nhất cho "AI tạo giá trị đáng kể" theo đúng tiêu chí chấm |

## Dấu hiệu bạn vẫn đang "vibe code" dù không nhận ra

- Bạn không giải thích được vì sao một đoạn code hoạt động, chỉ biết "AI viết nó và nó
  chạy"
- Bạn paste nguyên lỗi vào AI 3-4 lần liên tiếp mà không tự đọc lỗi trước
- Sản phẩm chưa từng chạy thử trên máy/thiết bị nào khác ngoài máy của người build
- Không ai trong đội, ngoài người ngồi cạnh AI, biết chi tiết kỹ thuật đủ để trả lời câu
  hỏi phản biện

Không có gì xấu hổ nếu bạn đang ở đây — đây là điểm khởi đầu bình thường. Repo này tồn
tại để giúp bạn đi tiếp.

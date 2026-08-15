---
name: benchmark-literacy
description: Hướng dẫn đọc và diễn giải đúng các bảng benchmark/leaderboard khi so sánh model hoặc công cụ AI cụ thể, tránh bị đánh lừa bởi số liệu marketing. LUÔN dùng khi người dùng đang phân vân chọn model/công cụ AI dựa trên điểm benchmark, khi chuẩn bị trích dẫn số liệu benchmark trong hồ sơ hoặc trước BGK, hoặc khi thấy một tuyên bố kiểu "model X thông minh hơn model Y" cần kiểm chứng. KHÔNG dùng để quyết định AI nên đóng VAI TRÒ gì trong sản phẩm (đó là ai-solution-design) — skill này chỉ so sánh các lựa chọn model/công cụ cụ thể sau khi đã biết cần AI làm gì.
---

# Benchmark Literacy — Đọc bảng xếp hạng AI mà không bị đánh lừa

## Nguyên tắc cốt lõi

Benchmark đo **năng lực của model nền tảng**, không đo hiệu quả của skill/prompt/quy
trình bạn đang dùng. Một model đứng đầu bảng xếp hạng tổng hợp không tự động là lựa chọn
đúng cho bài toán cụ thể của bạn — luôn tìm benchmark gần nhất với việc thực sự cần làm.

## Ba câu hỏi cần trả lời trước khi tin một con số benchmark

### 1. Ai công bố con số này?
Số liệu do chính công ty làm ra model tự công bố ("vendor-reported") có xu hướng chọn
điều kiện thuận lợi nhất cho họ. Số liệu từ bên thứ ba đánh giá độc lập (ví dụ benchmark
chạy lại bằng harness chuẩn hoá chung cho mọi model) đáng tin hơn để so sánh công bằng.

### 2. Benchmark này có nguy cơ nhiễm dữ liệu huấn luyện không?
Benchmark càng cũ, càng công khai lâu, càng có khả năng model đã "nhìn thấy" đề và đáp
án trong lúc huấn luyện. Ưu tiên tin các benchmark có cơ chế chống nhiễm (đề bài mới liên
tục) hoặc phiên bản "khó/mới" của benchmark quen thuộc.

### 3. Benchmark này có giống với việc bạn thực sự cần làm không?
Model giỏi giải bài toán thi đấu lập trình (competitive programming) không chắc giỏi
việc "sửa một tính năng trong codebase lộn xộn có sẵn" — đây là hai kỹ năng khác nhau.
Xem `resources/benchmark-va-cach-doc.md` để biết benchmark nào đo gần với loại việc nào.

## Quy trình khi cần chọn model/công cụ cho một tính năng cụ thể

1. Xác định chính xác tác vụ (sinh nội dung tiếng Việt? xử lý ảnh? sửa code trong
   codebase có sẵn? tốc độ phản hồi thời gian thực?).
2. Tìm benchmark gần nhất với tác vụ đó, không dùng điểm tổng hợp chung chung.
3. Đối chiếu ít nhất 2 nguồn khác nhau nếu có (ví dụ điểm vendor công bố và điểm bên thứ
   ba đo lại) — nếu chênh lệch lớn, ưu tiên tin nguồn độc lập hơn.
4. **Luôn tự thử trên bài toán thật của bạn** trước khi quyết định — đây là bước không
   benchmark công khai nào thay thế được.

## Khi trình bày trước Ban Giám khảo

Nếu so sánh công cụ/model trong hồ sơ hoặc thuyết trình, trích nguồn benchmark cụ thể
("theo benchmark X, model này đạt Y% trên tác vụ Z") thay vì khẳng định chung chung
("AI này thông minh hơn"). Thể hiện rõ đây là lựa chọn có căn cứ — đúng tinh thần "tư duy
kiến tạo giải pháp bằng AI" mà cuộc thi hướng tới.

## Cảnh báo cho agent

Nếu người dùng trích một con số benchmark nghe có vẻ ấn tượng ("model X đạt 99% trên
benchmark Y") mà không rõ nguồn, khuyến khích kiểm tra lại: ai công bố, benchmark này đo
gì, có phiên bản mới/khó hơn không cho thấy bức tranh khác không.

## Nguồn tham khảo

Xem `resources/benchmark-va-cach-doc.md` để có danh sách benchmark cụ thể (SWE-bench,
LMArena, Artificial Analysis, Aider, LiveCodeBench) và giải thích chi tiết ba cái bẫy khi
đọc benchmark.

---
name: ai-solution-design
description: Hướng dẫn xác định chính xác AI nên đóng vai trò gì trong một giải pháp, sau khi vấn đề đã được xác định rõ (dùng sau skill problem-framing). LUÔN dùng khi người dùng đã có mô tả vấn đề và cần quyết định kiến trúc giải pháp, khi cần viết phần "Đề xuất giải pháp ứng dụng AI" trong hồ sơ dự thi, hoặc khi cần đánh giá "AI có thực sự cần thiết ở đây không". KHÔNG dùng nếu vấn đề chưa được đóng khung rõ ràng — quay lại problem-framing trước. KHÔNG dùng để so sánh/chọn model hay công cụ AI cụ thể bằng số liệu (đó là benchmark-literacy) — skill này chỉ quyết định AI làm việc gì, chưa chọn công cụ nào.
---

# AI Solution Design — Thiết kế vai trò của AI trong giải pháp

## Nguyên tắc cốt lõi

Theo đúng tiêu chí chấm của Thể lệ: **AI không bắt buộc là công nghệ lõi**, giám khảo
đánh giá dựa trên giá trị đáng kể mà AI tạo ra, chứ không phải số lượng công cụ AI hay
độ phức tạp mô hình. Agent áp dụng skill này phải giúp người dùng trả lời được câu hỏi
gốc: **"Giải pháp này có thực sự tốt hơn nhờ có AI, so với phương án không dùng AI?"**
Nếu câu trả lời không rõ ràng, đừng vội thêm AI vào chỉ vì đây là cuộc thi AI.

## Quy trình thiết kế

### Bước 1 — Liệt kê các bước trong hành trình người dùng
Vẽ ra toàn bộ luồng người dùng tương tác với giải pháp, từng bước một, **trước khi**
nghĩ AI nằm ở đâu. Ví dụ: Tìm phòng trống → Xem lịch → Chọn giờ → Đặt phòng → Nhận xác
nhận.

### Bước 2 — Với mỗi bước, hỏi: bước này khó vì thiếu dữ liệu, thiếu phán đoán, hay thiếu tốc độ?
AI tạo giá trị rõ nhất khi bước đó cần: xử lý dữ liệu phi cấu trúc (văn bản, hình ảnh,
giọng nói), cá nhân hóa dựa trên ngữ cảnh, sinh nội dung, hoặc ra quyết định dựa trên
nhiều tín hiệu mờ. AI **không** phải lựa chọn tốt cho: logic đơn giản có quy tắc rõ ràng
(dùng code thường), tra cứu dữ liệu có cấu trúc (dùng database/query thường), hoặc các
tác vụ cần độ chính xác tuyệt đối không chấp nhận sai số (dùng rule-based).

### Bước 3 — Chọn đúng 1-2 điểm chạm AI có giá trị cao nhất, không rải AI khắp nơi
Một sản phẩm nhét AI vào mọi bước thường loãng và khó kiểm soát chất lượng. Ưu tiên
điểm chạm mà: (a) nếu bỏ AI ra, trải nghiệm giảm rõ rệt, (b) đo được sự khác biệt trước/
sau khi có AI.

### Bước 4 — Xác định rõ AI làm gì, con người/logic thường làm gì
Viết rõ ràng dạng bảng: "AI chịu trách nhiệm [X]" / "Logic thường (rule-based) chịu
trách nhiệm [Y]" / "Con người (người dùng hoặc đội vận hành) chịu trách nhiệm [Z]". Đây
chính là nội dung giám khảo sẽ hỏi ở phần phản biện — đội thi phải trả lời được, không
chỉ AI hiểu.

### Bước 5 — Xác định rủi ro và giới hạn của AI trong giải pháp
Với mỗi điểm chạm AI, trả lời: điều gì xảy ra khi AI sai/ảo giác (hallucinate)? Có cơ
chế nào để người dùng phát hiện và sửa không? Đây là dấu hiệu của một đội hiểu sản phẩm
thật sự, không chỉ "để AI tự lo".

### Bước 6 — Chọn công cụ/mô hình AI phù hợp — sau khi đã rõ vai trò, không phải trước
Chỉ ở bước này mới chọn công cụ cụ thể (xem `resources/cong-cu-ai-theo-giai-doan.md`).
Tiêu chí chọn: độ phù hợp với tác vụ, chi phí/giới hạn miễn phí, độ dễ tích hợp trong 6
tuần — không chọn công cụ vì "nghe hot".

## Output kỳ vọng

Một bảng ngắn:

| Bước trong hành trình người dùng | Ai/cái gì xử lý | Vai trò của AI (nếu có) | Giá trị AI tạo ra so với không có AI |
|---|---|---|---|

Cộng một đoạn giải trình ngắn (3-4 câu) trả lời thẳng: "AI tạo ra giá trị đáng kể ở đây
vì..." — đây là nguyên liệu trực tiếp cho phần "Đề xuất giải pháp ứng dụng AI" trong hồ
sơ Vòng Sơ loại.

## Cảnh báo cho agent

- Nếu người dùng đề xuất dùng AI cho một tác vụ mà rule-based rõ ràng làm tốt hơn (rẻ
  hơn, nhanh hơn, chính xác hơn), **nói thẳng điều đó** — kể cả khi đây là cuộc thi AI.
  Giám khảo đánh giá đúng đắn của việc áp dụng AI, không phải việc có AI hay không.
- Tránh thiết kế giải pháp phụ thuộc AI ở bước không chấp nhận sai số (ví dụ: tính toán
  học phí, xác thực danh tính) mà không có lớp kiểm tra logic thường bên cạnh.

## Nguồn tham khảo

Nguyên tắc "AI không bắt buộc là công nghệ lõi, quan trọng là giá trị tạo ra" trích trực
tiếp từ Mục VII Thể lệ cuộc thi. Phần quy trình thiết kế còn lại là tổng hợp thực tiễn về
product/AI solution design, không dựa trên benchmark hay nghiên cứu định lượng cụ thể.
Để chọn công cụ/model AI ở Bước 6 dựa trên căn cứ thay vì cảm tính, xem
`skills/benchmark-literacy/` và `resources/benchmark-va-cach-doc.md`.

---
name: testing-and-validation
description: Hướng dẫn kiểm thử MVP với người dùng thật và kiểm tra chất lượng kỹ thuật trước khi coi sản phẩm là hoàn thiện. LUÔN dùng khi người dùng nói MVP "đã xong" hoặc chuẩn bị quay video demo/nộp bài Bán kết, khi cần chuẩn bị Báo cáo sản phẩm, hoặc khi cần đánh giá sản phẩm có sẵn sàng trình bày trước Ban Giám khảo không. Dùng sau ai-assisted-build.
---

# Testing & Validation — Kiểm chứng thật, không tự huyễn hoặc

## Nguyên tắc cốt lõi

Thể lệ quy định rõ: "hành vi dàn dựng demo sai sự thật bị trừ điểm hoặc loại" và đội
thi phải "trình bày trung thực về tính năng, dữ liệu và mức độ hoàn thiện". Agent áp
dụng skill này giúp người dùng phân biệt rõ **"nó chạy khi tôi bấm đúng thứ tự tôi đã
tập"** với **"nó thực sự hoạt động"** — hai điều rất khác nhau.

## Hai lớp kiểm thử cần làm

### Lớp 1 — Kiểm thử kỹ thuật (functional testing)
Với mỗi tính năng lõi, tự hỏi và thử:
- Điều gì xảy ra khi người dùng nhập sai, nhập rỗng, hoặc bấm nhanh liên tục?
- Điều gì xảy ra khi mất kết nối mạng giữa chừng, hoặc AI API trả về lỗi/timeout?
- Nếu có nhiều người dùng cùng lúc, dữ liệu có bị ghi đè/lẫn lộn không?
- Với tính năng dùng AI: thử ít nhất 5-10 input khác nhau, kể cả input "khó" hoặc cố
  tình đánh lừa — ghi lại tỷ lệ AI trả lời đúng/hữu ích, đừng chỉ thử 1 lần "đẹp" rồi
  quay video luôn.

### Lớp 2 — Kiểm thử với người dùng thật (user validation)
Đây là bước hay bị bỏ qua nhất trong 6 tuần gấp gáp, nhưng lại là bằng chứng thuyết
phục nhất trước BGK. Tối thiểu:
- Đưa sản phẩm cho 3-5 người thuộc đúng nhóm người dùng mục tiêu đã xác định ở
  `problem-framing`, **không phải bạn cùng đội hay người quen biết trước sản phẩm**.
- Quan sát họ dùng mà không hướng dẫn trước — nếu họ bị kẹt ở đâu, đó là vấn đề thật của
  sản phẩm, không phải vấn đề của họ.
- Hỏi cụ thể: "vấn đề ban đầu của bạn có được giải quyết không?", không hỏi chung chung
  "bạn thấy sao?".
- Ghi lại phản hồi, kể cả phản hồi tiêu cực — đưa vào Báo cáo sản phẩm cho thấy đội có
  quy trình kiểm chứng thật, đây là điểm cộng lớn với giám khảo có kinh nghiệm.

## Quy trình quay video Demo MVP (tối đa 3 phút theo Thể lệ)

1. Mở đầu bằng vấn đề (10-15 giây) — nhắc lại ai, vấn đề gì, không lan man.
2. Trình diễn đúng luồng chính, dùng dữ liệu/tình huống thực tế chứ không phải tình
   huống lý tưởng hoá quá mức.
3. Nếu có giới hạn/lỗi đã biết, không cần giấu — một câu ngắn "hiện tại phiên bản này
   chưa xử lý [X], dự kiến hoàn thiện ở bản tiếp theo" cho thấy sự trung thực, tốt hơn
   nhiều so với bị phát hiện dàn dựng.
4. Quay trên môi trường triển khai thật (đã deploy) nếu có thể, không chỉ quay màn hình
   `localhost` — càng gần thật, càng đáng tin.

## Output kỳ vọng

- Bảng kết quả kiểm thử kỹ thuật: tính năng / trường hợp thử / kết quả / đã sửa chưa
- Tóm tắt phản hồi người dùng thật: số người thử, phát hiện chính, thay đổi đã thực hiện
  sau phản hồi (nếu MVP được điều chỉnh dựa trên feedback, đây là điểm mạnh — nêu rõ)
- Video demo đúng thời lượng, quay trên bản deploy thật

Nội dung này đưa thẳng vào phần "Báo cáo sản phẩm" — xem `templates/bao-cao-san-pham-template.md`.

## Cảnh báo cho agent

- Nếu người dùng chỉ thử sản phẩm 1 lần và muốn quay demo ngay, nhắc rõ rủi ro: BGK có
  thể hỏi trực tiếp và thử lại sản phẩm tại chỗ ở phần phản biện.
- Không giúp "làm đẹp" số liệu hay kết quả thử nghiệm không có thật.

## Nguồn tham khảo

Yêu cầu về tính trung thực khi demo trích trực tiếp từ Mục X.1 Thể lệ cuộc thi ("hành vi
dàn dựng demo sai sự thật bị trừ điểm hoặc loại"). Quy trình kiểm thử kỹ thuật và kiểm
thử người dùng là tổng hợp thực tiễn UX research/QA phổ biến, không dựa trên benchmark cụ
thể.

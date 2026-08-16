# Giai đoạn 3 — Test: Kiểm thử người dùng thật trong thời gian ngắn

*Guide này là phần đào sâu của `skills/testing-and-validation/SKILL.md` — tập trung vào
cách thực hiện Lớp 2 (kiểm thử người dùng thật) khi thời gian chỉ còn vài ngày trước hạn
nộp.*

## Kịch bản test 1 buổi chiều, 3-5 người, 15-20 phút/người

Không cần một quy trình UX research bài bản để có dữ liệu hữu ích. Một buổi chiều với 3-5
người đúng chân dung mục tiêu (xem `skills/problem-framing/`) là đủ để phát hiện phần lớn
vấn đề nghiêm trọng. Cấu trúc mỗi phiên 15-20 phút:

| Thời gian | Việc làm | Lưu ý |
|---|---|---|
| 2-3 phút | Giới thiệu ngắn gọn, KHÔNG giải thích trước sản phẩm làm gì | Nếu bạn giải thích trước, họ sẽ dùng theo hướng dẫn thay vì tự khám phá — mất đi dữ liệu thật về việc sản phẩm có tự giải thích được không |
| 8-10 phút | Đưa một nhiệm vụ cụ thể ("hãy tìm và đặt một phòng học trống vào chiều mai"), quan sát họ tự làm, không can thiệp | Im lặng quan sát là khó nhất — bản năng sẽ muốn giúp ngay khi họ lúng túng, nhưng đó chính là dữ liệu quý nhất |
| 5-7 phút | Hỏi lại theo cấu trúc ở phần dưới | Hỏi ngay sau khi họ vừa trải nghiệm, đừng để cách vài ngày mới hỏi lại |

## Phân biệt phản hồi "lịch sự" và phản hồi thật

Người Việt (và phần lớn văn hoá châu Á nói chung) có xu hướng trả lời lịch sự để tránh làm
người hỏi khó xử — đặc biệt rõ khi người hỏi có mặt trực tiếp. Dấu hiệu bạn đang nhận phản
hồi lịch sự thay vì phản hồi thật:

- Câu trả lời chung chung, không có chi tiết cụ thể: "cũng được", "ổn đó", "chắc dùng được"
- Họ khen nhưng không thể trả lời khi bạn hỏi tiếp "cụ thể phần nào bạn thấy hữu ích?"
- Họ nói "sẽ dùng" nhưng không đưa ra được tình huống cụ thể nào họ sẽ dùng
- Ngôn ngữ cơ thể lúng túng trong lúc thao tác nhưng miệng vẫn nói "hiểu rồi", "dễ mà"

Kỹ thuật lấy phản hồi thật:

1. **Hỏi về hành động, không hỏi về cảm nhận.** Thay vì "bạn thấy sao?", hỏi "bạn vừa bấm
   vào đâu và mong đợi điều gì xảy ra?"
2. **Hỏi câu ngược để kiểm tra.** "Nếu tôi bỏ tính năng này đi, bạn có thấy thiếu không? Vì
   sao?" — người chỉ đang lịch sự thường không có câu trả lời cụ thể.
3. **Chấp nhận sự im lặng.** Đừng vội lấp khoảng lặng bằng câu hỏi gợi ý — nhiều khi sự
   ngập ngừng chính là phản hồi thật nhất.
4. **Hỏi "vấn đề ban đầu của bạn có được giải quyết không?"** — câu hỏi thẳng vào vấn đề gốc
   (đã xác định ở `skills/problem-framing/`), khó trả lời qua loa hơn câu hỏi chung chung.

## Mẫu ghi chú quan sát

Ghi lại trong lúc quan sát, không đợi tới cuối buổi mới nhớ lại:

| Hành động của người dùng | Họ nói gì (nguyên văn) | Họ thực sự làm gì | Vấn đề phát hiện |
|---|---|---|---|
| Bấm vào nút "Tìm phòng" | "À, cái này để tìm phòng à" | Dừng lại 3 giây trước khi bấm, có vẻ không chắc | Nhãn nút chưa đủ rõ chức năng |
| Nhập giờ muốn đặt | (im lặng) | Nhập sai định dạng giờ 2 lần trước khi đúng | Form nhập giờ thiếu gợi ý định dạng |
| Xem kết quả tìm phòng | "Ồ có nhiều phòng vậy" | Cuộn qua rất nhanh, không đọc kỹ | Kết quả không sắp xếp theo mức độ liên quan, gây choáng ngợp |

Sau buổi test, tổng hợp bảng này thành phần "Tóm tắt phản hồi người dùng thật" theo đúng
output kỳ vọng trong `skills/testing-and-validation/SKILL.md`, đưa vào
`templates/bao-cao-san-pham-template.md`.

## Đọc tiếp theo đâu

- `skills/testing-and-validation/SKILL.md` — đầy đủ quy trình kiểm thử kỹ thuật + người dùng
- `guides/04-ship/README.md` — sau khi kiểm chứng xong, bước tiếp theo là đưa sản phẩm lên
  môi trường thật

## Nguồn tham khảo

Kỹ thuật phân biệt phản hồi lịch sự và phản hồi thật là tổng hợp thực tiễn phổ biến trong
UX research (đặc biệt liên quan tới thiên kiến văn hoá khi phỏng vấn trực tiếp), không dựa
trên một nghiên cứu định lượng cụ thể cho repo này. Xem `resources/nguon-tham-khao.md` để
phân biệt với phần có trích số liệu thật trong repo.

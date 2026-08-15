---
name: problem-framing
description: Hướng dẫn nhận diện và đóng khung một vấn đề thực tế trước khi nghĩ tới giải pháp công nghệ hay AI. LUÔN dùng NGAY khi người dùng vừa nêu một ý tưởng sản phẩm/AI lần đầu trong hội thoại — kể cả khi họ nói muốn "bắt đầu build/code luôn" hay "cứ prompt rồi xem chạy không", vì mọi ý tưởng đều phải qua bước này trước khi tới ai-solution-design hay ai-assisted-build. Cũng dùng khi người dùng nói "tôi muốn làm app/tool cho...", khi cần viết phần "Mô tả vấn đề" trong hồ sơ dự thi, hoặc khi ý tưởng nghe xuất phát từ công nghệ ("dùng AI để...") thay vì từ vấn đề cụ thể. KHÔNG dùng nếu vấn đề đã được đóng khung rõ ràng từ trước trong hội thoại (đã có nhóm người dùng cụ thể + vấn đề quan sát được, đo được) — khi đó đi thẳng ai-solution-design.
---

# Problem Framing — Nhận diện vấn đề trước khi chạm vào AI

## Vì sao skill này tồn tại

Sai lầm phổ biến nhất khi làm sản phẩm AI là bắt đầu từ câu hỏi "AI có thể làm gì?" thay
vì "ai đang gặp vấn đề gì?". Kết quả là những sản phẩm rất "cool" về mặt công nghệ nhưng
không ai cần dùng. Agent áp dụng skill này phải **chủ động chặn** người dùng lại nếu họ
nhảy thẳng vào giải pháp mà chưa trả lời rõ các câu hỏi bên dưới — kể cả khi họ có vẻ vội.

## Dấu hiệu cần áp dụng skill này ngay

- Người dùng mở đầu bằng "tôi muốn dùng AI để..." thay vì "người dùng X đang gặp vấn đề Y"
- Ý tưởng mô tả được bằng công nghệ ("chatbot", "app dùng LLM") nhưng không mô tả được
  bằng một câu duy nhất về nỗi đau của một nhóm người cụ thể
- Không có câu trả lời rõ ràng cho "nếu không có sản phẩm này, người dùng đang làm gì?"

## Quy trình 5 bước

### Bước 1 — Xác định người dùng cụ thể, không phải "mọi người"
Từ chối các câu trả lời như "sinh viên nói chung" hay "mọi người ai cũng cần". Yêu cầu
thu hẹp: độ tuổi, hoàn cảnh, tần suất gặp vấn đề, một vài "chân dung" cụ thể. Nếu người
dùng không biết, đề xuất họ đi hỏi 3-5 người thật thuộc nhóm đó trước khi đi tiếp — đây
không phải bước có thể bỏ qua.

### Bước 2 — Mô tả vấn đề bằng hành vi quan sát được, không phải giải pháp
Vấn đề tốt: "Sinh viên năm nhất tốn trung bình 2 giờ/tuần để tìm phòng học trống vì
lịch phòng không công khai." (quan sát được, đo được)
Vấn đề tồi: "Sinh viên cần một app tìm phòng học bằng AI." (đã nhảy sang giải pháp)

Nếu người dùng mô tả vấn đề dưới dạng giải pháp, hỏi ngược: "Nếu không có [giải pháp đó],
điều gì đang thực sự gây khó chịu?"

### Bước 3 — Kiểm tra mức độ nghiêm trọng và tần suất
Một vấn đề đáng giải quyết cần trả lời được: xảy ra bao thường xuyên, ảnh hưởng bao nhiêu
người, người dùng hiện đang trả giá gì (thời gian/tiền/cơ hội) để đối phó với nó. Vấn đề
"thỉnh thoảng hơi bất tiện" khác hẳn vấn đề "mất 2 giờ mỗi tuần, ảnh hưởng cả nghìn sinh
viên".

### Bước 4 — Xác định giải pháp hiện tại (kể cả giải pháp "thủ công")
Luôn có một cách người dùng đang đối phó với vấn đề — hỏi Google, hỏi bạn bè, dùng Excel,
chịu đựng. Hiểu rõ giải pháp hiện tại giúp thấy chính xác đâu là khoảng trống thật sự.

### Bước 5 — Chỉ sau 4 bước trên mới hỏi: AI có vai trò gì ở đây?
Không phải mọi vấn đề đều cần AI. Nếu vấn đề giải được bằng một Google Form hay một cái
bảng Excel, nói thẳng điều đó — chuyển sang skill `ai-solution-design` chỉ khi đã xác
định được một khoảng trống mà AI thực sự tạo giá trị đáng kể (không phải AI cho có).

## Output kỳ vọng sau khi áp dụng skill

Một đoạn mô tả vấn đề 3-5 câu theo cấu trúc:

> **[Nhóm người dùng cụ thể]** đang gặp **[vấn đề quan sát được]** vì **[nguyên nhân gốc]**.
> Điều này xảy ra **[tần suất]** và khiến họ **[cái giá phải trả]**. Hiện tại họ đang
> **[giải pháp thủ công hiện có]**, nhưng cách này chưa giải quyết được vì **[khoảng
> trống cụ thể]**.

Đoạn này chính là nguyên liệu cho phần "Mô tả vấn đề" trong hồ sơ Vòng Sơ loại — xem
`templates/ho-so-so-loai-template.md`.

## Lỗi thường gặp cần cảnh báo người dùng

- **Vấn đề quá rộng**: "sinh viên gặp khó khăn trong học tập" — không đội nào giải được
  trong 6 tuần. Yêu cầu thu hẹp tới một tình huống cụ thể.
- **Vấn đề tự bịa ra để hợp lý hóa công nghệ đã muốn dùng**: nếu không có ai xác nhận
  vấn đề này thật, ghi rõ đây là giả định cần kiểm chứng ở bước sau, đừng viết như sự
  thật đã kiểm chứng.
- **Nhầm giữa "tính năng thiếu" và "vấn đề"**: "app X không có tính năng Y" là mô tả
  giải pháp cạnh tranh, chưa phải vấn đề của người dùng.

## Nguồn tham khảo

Quy trình 5 bước là tổng hợp thực tiễn phổ biến trong Design Thinking và phát triển sản
phẩm (problem discovery), không dựa trên một nghiên cứu định lượng cụ thể — đây là
phương pháp luận được chấp nhận rộng rãi, không phải kết quả benchmark. Xem
`resources/nguon-tham-khao.md` để phân biệt nội dung có trích dẫn số liệu thật với nội
dung tổng hợp thực tiễn trong toàn bộ repo.

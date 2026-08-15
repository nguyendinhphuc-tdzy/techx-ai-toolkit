---
name: ai-prompting
description: Hướng dẫn viết prompt rõ ràng, có ngữ cảnh và tiêu chí chấp nhận khi yêu cầu AI viết code hoặc thực hiện một tác vụ MỚI. LUÔN dùng khi người dùng chuẩn bị yêu cầu AI làm việc gì đó lần đầu, hoặc khi người dùng hỏi thẳng "prompt sao cho đúng". Dùng song song với ai-assisted-build. KHÔNG dùng khi vấn đề là một lỗi/bug cụ thể đã xuất hiện — kể cả khi AI đã sửa nhiều lần không được và output "liên tục không đúng ý" — trường hợp đó luôn chuyển sang debugging-basics, vì nguyên nhân là thiếu mô tả lỗi chính xác (mong đợi/thực tế/thông báo lỗi), không phải thiếu kỹ thuật viết prompt chung.
---

# AI Prompting — Viết prompt để nhận đúng cái mình cần

## Nguyên tắc cốt lõi

AI không đọc được suy nghĩ — nó chỉ phản ứng với những gì bạn thực sự viết ra và ngữ
cảnh nó thực sự có. Phần lớn output "sai" không phải vì AI kém, mà vì prompt thiếu ngữ
cảnh hoặc mơ hồ đến mức có nhiều cách hiểu hợp lý khác nhau.

## Bốn thành phần của một prompt tốt

1. **Mục tiêu cụ thể** — không phải "làm chức năng đăng nhập" mà là "form đăng nhập bằng
   email + mật khẩu, validate email đúng định dạng trước khi gửi request"
2. **Ngữ cảnh** — đoạn code/file liên quan đã có, cấu trúc project hiện tại, thư viện
   đang dùng. AI không tự "nhìn thấy" toàn bộ project trừ khi bạn cung cấp hoặc nó có
   quyền đọc file.
3. **Ràng buộc** — style code, thư viện được phép/không được phép dùng, giới hạn hiệu
   năng nếu có.
4. **Tiêu chí chấp nhận** — mô tả rõ khi nào output được coi là đúng ("khi nhập email
   sai định dạng, hiển thị lỗi 'Email không hợp lệ' ngay dưới ô nhập").

## Quy trình khi output AI không đúng ý

Đừng lặp lại y nguyên prompt với thêm dấu chấm than. Thay vào đó:

1. Xác định chính xác phần nào sai — không phải "nó không hoạt động" mà "hàm X trả về Y
   thay vì Z khi input là W".
2. Kiểm tra xem AI có đủ ngữ cảnh không — nó có thấy được đoạn code liên quan không, hay
   đang đoán dựa trên giả định.
3. Viết lại prompt với ngữ cảnh + tiêu chí chấp nhận rõ hơn, không chỉ lặp lại yêu cầu.
4. Nếu vẫn sai sau 2-3 lần, dừng lại và tự đọc/tự suy nghĩ trước khi thử tiếp — dấu hiệu
   agent hoặc bạn đang thiếu thông tin nền tảng nào đó.

## Prompt tốt vs prompt tồi — ví dụ

**Tồi:** "làm cho tôi trang danh sách sản phẩm"

**Tốt:** "Tạo component hiển thị danh sách sản phẩm dạng lưới 3 cột trên desktop, 1 cột
trên mobile. Dữ liệu lấy từ API `/api/products` trả về mảng `{id, name, price, image}`.
Khi đang tải hiển thị skeleton loading, khi API lỗi hiển thị thông báo 'Không tải được
sản phẩm, thử lại'. Dùng Tailwind, theo đúng component `ProductCard` đã có trong
`src/components/`."

## Cảnh báo cho agent

- Nếu người dùng liên tục copy-paste cùng một prompt sau khi thất bại, chủ động hỏi:
  "Bạn có thể mô tả chính xác phần nào chưa đúng không?" thay vì thử lại y hệt.
- Không khuyến khích prompt kiểu "làm hết mọi thứ cho tôi" cho một tác vụ lớn — hướng
  người dùng chia nhỏ theo `skills/ai-assisted-build/`.

## Nguồn tham khảo

Nội dung skill này là tổng hợp thực tiễn phổ biến về prompt engineering (ngữ cảnh, tiêu
chí chấp nhận, chia nhỏ tác vụ) — không dựa trên một nghiên cứu định lượng cụ thể. Xem
thêm tài liệu chính thức của Anthropic về prompt engineering để đào sâu hơn:
docs.claude.com/en/docs/build-with-claude/prompt-engineering/overview

# Hành trình từ Idea đến Production khi làm việc với AI

*Guide này viết cho người chưa quen thuật ngữ kỹ thuật. Nếu bạn đã quen code, có thể đọc
lướt và vào thẳng phần `skills/`.*

## Vì sao cần một "quy trình", không phải chỉ "mở AI ra và làm"?

AI hiện đại có thể viết code, thiết kế giao diện, thậm chí tự deploy sản phẩm chỉ bằng
một câu lệnh. Điều này khiến nhiều người nghĩ: cứ mô tả ý tưởng, để AI làm hết, xong.
Cách này gọi là **"vibe coding"** — làm theo cảm hứng, không kiểm chứng từng bước.

Vấn đề: một sản phẩm dựng theo kiểu này thường **chạy được trên máy người tạo ra nó**,
nhưng sụp đổ ngay khi:
- Người dùng thật thao tác khác kịch bản đã thử
- Cần triển khai (deploy) để người khác truy cập được
- Ban Giám khảo hỏi "tại sao đội chọn cách làm này" mà không ai trả lời được, vì chưa
  từng ai trong đội thực sự hiểu — chỉ AI "hiểu".

Quy trình trong repo này không làm bạn chậm hơn — nó giúp bạn **tránh vòng lặp sửa lỗi
vô tận** vốn là lý do chính khiến các đội vibe-coding bị trễ tiến độ.

## 4 giai đoạn, 4 câu hỏi

| Giai đoạn | Câu hỏi trung tâm | Sai lầm phổ biến nếu bỏ qua |
|---|---|---|
| **1. Idea** | Ai đang gặp vấn đề gì, thật sự? | Xây sản phẩm không ai cần, vì bắt đầu từ "AI làm được gì" thay vì "người dùng cần gì" |
| **2. Build** | AI nên đóng vai trò gì, và làm sao build có kiểm soát? | Vibe coding — không ai hiểu code, sản phẩm giòn, dễ vỡ |
| **3. Test** | Sản phẩm có thực sự hoạt động với người dùng thật không? | Chỉ tự thử 1 lần "đẹp" rồi quay demo, sụp đổ khi BGK thử tại chỗ |
| **4. Ship** | Người ngoài đội có dùng được sản phẩm này không, ngay bây giờ? | Sản phẩm mãi mãi kẹt trên "localhost", chỉ có video làm bằng chứng |

## Bạn không cần biết code để đi hết hành trình này

Rất nhiều bước quan trọng nhất — nhận diện vấn đề, thiết kế vai trò của AI, kiểm thử với
người dùng thật — **không đòi hỏi biết lập trình**. Đây chính xác là lý do các đội liên
ngành (có người không biết code) thường mạnh hơn đội toàn dân kỹ thuật: vấn đề được nhìn
đúng hơn.

Nếu đội bạn không có ai biết code, vẫn có thể build được MVP bằng AI coding assistant —
nhưng càng cần làm đúng quy trình ở `skills/ai-assisted-build/SKILL.md`, vì không có ai
"bắt lỗi" AI bằng trực giác kỹ thuật, phải bù bằng quy trình kiểm chứng chặt hơn.

## Đọc tiếp theo đâu

1. `guides/01-idea/` — cách tìm và xác nhận một vấn đề thật
2. `guides/02-build/` — chọn công cụ AI, thiết kế giải pháp, build có hệ thống
3. `guides/03-test/` — kiểm thử với người dùng thật
4. `guides/04-ship/` — khái niệm deploy, bảo mật cơ bản giải thích dễ hiểu

Song song, nếu đội bạn dùng AI agent (Claude Code, Cursor...), gắn các skill tương ứng
trong `skills/` để agent tự áp dụng đúng quy trình khi hỗ trợ bạn — xem
`skills/README.md`.

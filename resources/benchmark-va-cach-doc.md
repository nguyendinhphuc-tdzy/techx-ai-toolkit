# Benchmark & Leaderboard — và cách đọc mà không bị đánh lừa

## Trước tiên: benchmark đo *model*, không đo *skill*

Đây là điều dễ nhầm nhất. Khi bạn thấy "Claude", "GPT", "Gemini" xếp hạng trên một
leaderboard, đó là năng lực của **model nền tảng** (bộ não), không phải của skill/prompt
bạn đang dùng để hướng dẫn nó. Một model mạnh dùng skill viết dở vẫn có thể ra kết quả
tệ; một model yếu hơn dùng skill/quy trình tốt đôi khi vẫn ra kết quả ổn hơn kỳ vọng.
Tính tới thời điểm viết, chưa có benchmark công khai uy tín nào đo lường hiệu quả của
một SKILL.md cụ thể — điều này bạn cần tự đánh giá qua thử nghiệm thực tế trên project
của mình.

## Các benchmark/leaderboard uy tín nên biết

### SWE-bench (Verified & Pro) — swebench.com
Đo khả năng model sửa lỗi thật trên các dự án GitHub có sẵn (Django, Flask, scikit-learn
...) — model phải đọc issue, hiểu codebase, và tạo ra một patch làm bài test có sẵn của
dự án đó pass. Đây là benchmark gần với công việc kỹ sư thật nhất trong nhóm phổ biến.
**Lưu ý:** bản Verified gần như bão hoà (nhiều model đạt điểm rất cao, sát nhau) một
phần vì các repo này đã có sẵn trong dữ liệu huấn luyện của nhiều model — cộng đồng
nghiên cứu khuyến nghị nhìn thêm SWE-bench Pro (khó hơn, ít nhiễm dữ liệu hơn) để so
sánh công bằng hơn.

### LMArena (trước đây là LMSYS Chatbot Arena) — lmarena.ai
Khác hẳn các benchmark còn lại: đây là **con người bình chọn trực tiếp**, ẩn danh, giữa
hai câu trả lời của hai model khác nhau cho cùng một câu hỏi. Điểm Elo phản ánh sở thích
thực tế của người dùng, không phải máy tự chấm. Ưu điểm: khó bị "học tủ" (gaming) hơn
benchmark tự động. Nhược điểm: đo "câu trả lời nào con người thích hơn", không nhất thiết
đo "câu trả lời nào đúng/tốt về kỹ thuật hơn".

### Artificial Analysis Intelligence Index — artificialanalysis.ai
Gộp điểm từ khoảng 10 benchmark chuẩn hoá khác nhau (code, toán, khoa học, lý luận, tác
vụ agent) thành một chỉ số duy nhất. Hữu ích để có cái nhìn tổng quan nhanh, nhưng khi
cần quyết định thật (chọn model cho một tính năng cụ thể), nên xem điểm ở benchmark cụ
thể gần với việc bạn đang làm nhất, thay vì chỉ nhìn con số tổng hợp.

### Aider Polyglot leaderboard
Đo khả năng model chỉnh sửa code dưới dạng diff (chỉnh một phần, không viết lại toàn bộ
file) qua nhiều ngôn ngữ lập trình — gần với cách một AI coding assistant thực sự làm
việc trong một codebase có sẵn hơn là sinh code từ đầu.

### LiveCodeBench
Dùng các bài toán lập trình thi đấu **mới xuất hiện sau ngày chốt dữ liệu huấn luyện**
của model, để tránh tình trạng model "đã học thuộc đáp án" từ trước — một trong những
cách đáng tin cậy hơn để so sánh khả năng giải quyết vấn đề thật thay vì trí nhớ.

## Ba cái bẫy khi đọc bất kỳ bảng benchmark nào

### 1. Nhiễm dữ liệu huấn luyện (data contamination)
Nếu benchmark đã tồn tại công khai lâu, có khả năng model "nhìn thấy" đề bài và đáp án
trong lúc huấn luyện — điểm cao không chắc phản ánh khả năng giải quyết vấn đề mới. Ưu
tiên tin các benchmark có cơ chế chống nhiễm (dùng đề bài mới liên tục, như LiveCodeBench)
hoặc phiên bản "khó/mới" của benchmark cũ (như SWE-bench Pro so với Verified).

### 2. Độ nhạy với "harness" (cách agent được lắp ráp xung quanh model)
Cùng một model, nhưng cách agent lập kế hoạch, thử lại khi sai, đọc/sửa file... có thể
thay đổi điểm số nhiều hơn cả bản thân model. Vì vậy hai đội có thể công bố điểm khác
nhau cho cùng một model — đọc kỹ xem điểm được đo bằng harness của ai (nhà cung cấp model
tự công bố, hay một bên thứ ba đánh giá độc lập bằng harness chuẩn hoá).

### 3. "Giải đố" khác với "việc kỹ thuật thật"
Benchmark thi đấu lập trình (competitive programming) thưởng cho thuật toán khéo léo,
không phản ánh công việc kỹ thuật thật vốn lộn xộn hơn nhiều (đọc code cũ, sửa nhiều
file, giữ tương thích ngược...). Một model vô địch benchmark thi đấu vẫn có thể làm kém
ở việc refactor thông thường.

## Cách dùng benchmark thực tế khi làm sản phẩm ở TechX

1. Đừng chọn model chỉ vì đứng đầu bảng tổng hợp — tìm benchmark gần nhất với việc bạn
   đang làm (ví dụ: cần sinh nội dung tiếng Việt tốt → tìm đánh giá đa ngôn ngữ, không
   chỉ nhìn điểm code).
2. Tín hiệu đáng tin nhất vẫn là **tự thử trên chính bài toán của bạn** — benchmark công
   khai chỉ là bước lọc sơ bộ, không phải phán quyết cuối.
3. Khi trình bày trước BGK, nếu có so sánh model/công cụ, trích nguồn benchmark cụ thể
   thay vì nói chung chung "AI này thông minh hơn" — thể hiện tư duy có căn cứ.

## Liên quan

- `resources/nguon-tham-khao.md` — bảng đầy đủ nguồn, có link
- `skills/benchmark-literacy/SKILL.md` — skill giúp agent hỗ trợ bạn đọc đúng benchmark khi cần chọn công cụ

---
name: git-basics
description: Hướng dẫn dùng Git (version control) ở mức cơ bản cần thiết khi build với AI coding assistant — commit, branch, quay lại phiên bản cũ khi AI làm hỏng code. LUÔN dùng khi người dùng chưa dùng Git cho project, khi AI vừa sửa code làm hỏng thêm và cần quay lại bản trước, hoặc khi nhiều thành viên cùng làm trên một codebase. KHÔNG dùng để đánh giá CHẤT LƯỢNG code trước khi gộp nhánh (đó là code-review-basics) — skill này chỉ lo thao tác Git kỹ thuật, không phán đoán code đúng hay sai.
---

# Git Basics — Lưới an toàn khi build với AI

## Vì sao Git quan trọng hơn bình thường khi vibe code

Khi AI viết code thay bạn, tốc độ thay đổi code nhanh hơn nhiều so với tự tay viết —
nghĩa là khi có sai sót, thiệt hại cũng tích luỹ nhanh hơn. Không có Git, "AI sửa làm
hỏng thêm" thường dẫn tới việc build lại từ đầu vì không nhớ đâu là bản còn chạy tốt.

## 5 lệnh đủ dùng cho một MVP thi đấu

```bash
git init                          # khởi tạo Git cho project (làm 1 lần đầu tiên)
git add .                         # đánh dấu các thay đổi để chuẩn bị lưu
git commit -m "mô tả ngắn gọn"    # lưu lại một "điểm lưu" có thể quay về sau
git log --oneline                 # xem lại lịch sử các điểm đã lưu
git checkout -- .                 # huỷ mọi thay đổi chưa commit, quay về điểm lưu gần nhất
```

## Quy tắc thực dụng: commit sau mỗi đơn vị chạy được

Không cần commit "đẹp" theo chuẩn doanh nghiệp. Quy tắc tối thiểu: **mỗi khi một tính
năng/đơn vị nhỏ chạy đúng, commit ngay**, kèm message mô tả rõ ("thêm validate email cho
form đăng ký", không phải "update"). Đây chính là điểm quay lại an toàn khi bước tiếp
theo AI làm hỏng code.

## Khi AI làm hỏng code và bạn cần quay lại

1. Nếu thay đổi **chưa commit**: `git checkout -- .` để huỷ toàn bộ thay đổi chưa lưu,
   quay về bản đã commit gần nhất.
2. Nếu thay đổi **đã commit** nhưng muốn quay lại commit trước đó: `git log --oneline`
   để xem danh sách, sau đó `git checkout <mã-commit>` để xem lại bản đó (hỏi thêm nếu
   cần quay hẳn về, vì thao tác này cần cẩn thận hơn với nhánh chính).

## Làm việc nhóm cơ bản (khi nhiều người cùng code)

- Mỗi người làm trên một nhánh riêng (`git checkout -b ten-nhanh-cua-ban`) thay vì tất
  cả cùng sửa trực tiếp trên nhánh chính — giảm nguy cơ ghi đè code của nhau.
- Trước khi gộp code vào nhánh chính, đọc qua thay đổi (`git diff`) để chắc chắn hiểu
  những gì đang được thêm vào.

## Không bao giờ commit các thứ sau

- File `.env` chứa API key/mật khẩu (xem `skills/security-basics/`)
- Thư mục `node_modules/` hoặc các thư mục phụ thuộc được cài tự động — dùng file
  `.gitignore` để loại trừ ngay từ đầu

## Nguồn tham khảo

Nội dung là kiến thức nền tảng phổ biến về Git, không dựa trên nghiên cứu định lượng cụ
thể. Tài liệu chính thức: git-scm.com/doc

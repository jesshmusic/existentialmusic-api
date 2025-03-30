# ExistentialMusic API

This is the backend Rails 8.0.2 application powering the ExistentialMusic platform. It includes:

- ✅ PostgreSQL  
- ✅ TailwindCSS (pre-installed)  
- ✅ Action Text (Trix Rich Text Editor)  
- ✅ Active Storage with AWS S3  
- ✅ Full scaffolded models and views for direct content editing

---

## 🚀 Quick Start

### Prerequisites

- Ruby 3.3.7  
- Rails 8.0.2  
- PostgreSQL  
- Node.js (for asset building with TailwindCSS)

---

## ☁️ AWS S3 Configuration

Active Storage is configured to use Amazon S3 in production.

### Required Environment Variables

Set the following environment variables (via `.env`, Rails credentials, or your host’s environment settings):

```env
AWS_ACCESS_KEY_ID=your-access-key
AWS_SECRET_ACCESS_KEY=your-secret-key
AWS_REGION=your-region
AWS_BUCKET=your-bucket-name
```

These are referenced in `config/storage.yml`.

---

## 🎨 TailwindCSS

TailwindCSS is already installed and configured.

📘 Official docs: [https://tailwindcss.com/docs](https://tailwindcss.com/docs)

To customize styles:
- `tailwind.config.js`
- `app/assets/stylesheets/application.tailwind.css`

---

## ✅ Ruby / Rails Info

- **Ruby**: 3.3.7
- **Rails**: 8.0.2
- **Database**: PostgreSQL

---

## 🧪 Running the Server

```bash
bin/rails server
```

To set up the database:

```bash
bin/rails db:create db:migrate
```

---

## 📬 Maintainer

Built and maintained by [@jesshmusic](https://github.com/jesshmusic)

# 랜덤 자리 배치

빌드 과정이 없는 정적 사이트입니다. 좌석 생성, 엑셀 명단 업로드, 랜덤 배정, 수동 자리 교환은 브라우저에서 동작하고, 배치 저장은 Supabase를 사용합니다.

## 1. Supabase
1. https://supabase.com 에서 새 프로젝트를 만듭니다.
2. SQL Editor에 `supabase/schema.sql` 내용을 붙여 넣고 Run 합니다.
3. Project Settings > API에서 Project URL과 anon public 키를 `config.js`에 넣습니다.
4. 본인 계정으로 가입을 마친 뒤, Authentication > Sign In / Providers에서 "Allow new users to sign up"을 끄면 다른 사람이 가입하지 못합니다.
5. 배포 주소가 정해지면 Authentication > URL Configuration의 Site URL에 그 주소를 넣습니다.

## 2. GitHub
```bash
git init
git add .
git commit -m "랜덤 자리 배치 첫 버전"
git branch -M main
git remote add origin https://github.com/<계정>/<저장소>.git
git push -u origin main
```
학생 명단은 코드에 넣지 마세요. 명단은 앱에서 입력하거나 업로드하므로 저장소에 올라가지 않습니다.

## 3. Vercel
1. https://vercel.com 에서 Add New > Project로 위 GitHub 저장소를 가져옵니다.
2. Framework Preset은 Other, Build Command와 Output Directory는 비워 둡니다.
3. Deploy를 누르면 끝이며, 이후 `main`에 push 할 때마다 자동으로 다시 배포됩니다.

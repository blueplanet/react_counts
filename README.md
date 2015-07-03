## アプリケーションの名前変更

```
git grep -l 'module Rails4base' | xargs sed -i '' 's/Rails4base/Yourappname/g'
git grep -l 'rails4base' | xargs sed -i '' 's/rails4base/yourappname/g'
```

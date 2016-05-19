## アプリケーションの名前変更

```
git grep -l 'module ReactAccounts' | xargs sed -i '' 's/ReactAccounts/Yourappname/g'
git grep -l 'react_accounts' | xargs sed -i '' 's/react_accounts/yourappname/g'
```

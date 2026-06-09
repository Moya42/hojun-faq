# プロジェクトルール

## 環境
- **動作環境**: Android Chrome を前提とする
- **実行場所**: オフライン・社内共有フォルダ上での動作を想定

## 実装ルール

### 外部依存の禁止
外部CDN（Bootstrap、jQuery、Google Fonts等）への依存は禁止。
スタイル・スクリプトはすべてHTMLファイル内にインライン記述すること。

### 単一ファイル完結
すべての機能を単一のHTMLファイル内に完結させること。
外部JSファイル・外部CSSファイルへの分割は行わない。

### localStorage の安全な操作
localStorage の読み書きは必ず try/catch で囲むこと。

```js
// OK
try {
  localStorage.setItem('key', value);
} catch (e) {
  console.error('localStorage write failed:', e);
}

// NG
localStorage.setItem('key', value); // try/catch なし
```

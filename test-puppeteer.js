const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  
  const page = await browser.newPage();
  await page.goto('https://x.com/elonmusk', { waitUntil: 'networkidle2' });
  
  const tweets = await page.evaluate(() => {
    const tweetElements = document.querySelectorAll('[data-testid="tweet"]');
    return Array.from(tweetElements).slice(0, 5).map(tweet => {
      const text = tweet.innerText.substring(0, 200);
      return text;
    });
  });
  
  console.log(JSON.stringify(tweets, null, 2));
  await browser.close();
})();

const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  
  const page = await browser.newPage();
  await page.setViewport({ width: 1280, height: 800 });
  
  await page.goto('file:///home/openclaw/openclaw-workspace/exam-pulse-marketing/campaigns/2026-02-17-landing-page/index.html', { waitUntil: 'networkidle2' });
  
  await page.screenshot({ path: '/tmp/landing-page.png', fullPage: true });
  console.log('Screenshot saved');
  
  await browser.close();
})();

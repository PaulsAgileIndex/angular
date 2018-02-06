import { TwoWayBindingPage } from './app.po';

describe('two-way-binding App', () => {
  let page: TwoWayBindingPage;

  beforeEach(() => {
    page = new TwoWayBindingPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});

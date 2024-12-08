import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;
extension StringExt on String {
  String replacePercentage(int newPercentage) {
    return replaceAll('{percentage}', '$newPercentage%');
  } String sanitizeHtml() {
    // Parse the HTML string
    dom.Document document = html_parser.parse(this);
    
    // Convert <br> tags to newline
    document.querySelectorAll('br').forEach((element) {
      element.replaceWith(dom.Text('\n'));
    });

    // Extract the text content
    String sanitizedText = document.body?.text ?? '';

    return sanitizedText;
  }
}

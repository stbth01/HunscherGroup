import PyPDF2


pdf_file = PyPDF2.PdfFileReader(open('Bulletin.pdf','rb'))


print(pdf_file)

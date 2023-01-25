import pandas as pd
import xlsxwriter
df = pd.read_csv('units.csv', sep='\t')
print(df.columns)

write_to_filename = "test.xlsx"
with pd.ExcelWriter(write_to_filename, engine = 'xlsxwriter') as sample_writer:
	df.to_excel(sample_writer, sheet_name='sheet1', header=0, startrow=1)
	sample_workbook = sample_writer.book

	def color_row(cell_color):
		return sample_workbook.add_format({bg_color: cell_color})

	[print( v.index.values for v in df[df['IP']==x].index.values) for x in df.loc[:,"IP"] if x.startswith("10.") or x.startswith("192.") or x.startswith("172.")]
df.to_excel(write_to_filename)

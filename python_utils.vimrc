
py3 << EOL
import vim, io,sys
def PyExecReplace(line1,line2):
  print(line1, line2)
  r = vim.current.buffer.range(int(line1),int(line2))

  buf = vim.current.buffer
  (lnum1, col1) = buf.mark('<')
  (lnum2, col2) = buf.mark('>')
  lines = vim.eval('getline({}, {})'.format(lnum1, lnum2))
  lines[0] = lines[0][col1:]
  lines[-1] = lines[-1][:col2]
  print("\n".join(lines))
  print(vim.current.__dir__())
  print(dir(r))
  print(vim.current.buffer.name)
  print(dir(vim.current))
  #vim.current.line = 'yoyo'
  #r[:] = output[:] # the -1 is to remove the final blank line
  #redirected.close()
EOL

command -range PP python3 PyExecReplace(<f-line1>,<f-line2>)


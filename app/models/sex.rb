class Sex < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '男' },
    { id: 2, name: '女' }
  ]
end

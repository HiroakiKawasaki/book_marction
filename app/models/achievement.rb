class Achievement < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '達成' },
    { id: 2, name: '未達成' },
  ]
end
let handler = async m => m.reply(`
╭─「 Bot Ini Dibuat Oleh • VCKY 」
╰────
╭─「 Hubungi 」
│ > Ingin donasi? Wa.me/6285234077576
╰────
`.trim()) // Tambah sendiri kalo mau
handler.help = ['donasi']
handler.tags = ['info']
handler.command = /^dona(te|si)$/i

module.exports = handler

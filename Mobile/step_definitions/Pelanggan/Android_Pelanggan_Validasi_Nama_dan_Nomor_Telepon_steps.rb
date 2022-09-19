Given 'user berada di homepage "Pelanggan-03"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And 'user tambah pelanggan "Pelanggan-03"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click

end

When 'user simpan "Pelanggan-03"' do
    @app.pelanggan.btn_simpan.click
end

Then 'system menampilkan validasi nama wajib diisi dan nomor telepon minimal 5 digit dan max 15 digit "Pelanggan-03"' do
    expect(@app.pelanggan.errorMessage_Nama.displayed?).to be true
    expect(@app.pelanggan.errorMessage_NoTlp.displayed?).to be true
    p 'Scenario Berhasil'
    @app.pelanggan.btn_close.click
    @app.pelanggan.btn_back.click

end
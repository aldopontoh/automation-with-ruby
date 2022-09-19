Given 'user berada di homepage "Pelanggan-04"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And 'user tambah pelanggan "Pelanggan-04"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click

end

And 'user input field nama satu huruf "Pelanggan-04"' do
    @app.pelanggan.txtField_nama_pelanggan.send_keys "A"
end

When 'user simpan "Pelanggan-04"' do
    @app.pelanggan.btn_simpan.click
end

Then 'system menampilkan validasi nomor telepon minimal 5 digit dan max 15 digit "Pelanggan-04"' do
    expect(@app.pelanggan.errorMessage_NoTlpNew.displayed?).to be true
    p 'Scenario Berhasil'
    @app.pelanggan.btn_close.click
    @app.pelanggan.btn_back.click
end
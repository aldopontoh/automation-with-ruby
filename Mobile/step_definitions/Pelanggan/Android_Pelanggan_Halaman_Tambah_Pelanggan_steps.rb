Given 'user berada di homepage "Pelanggan-02"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

When 'user tambah pelanggan "Pelanggan-02"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click

end

Then 'system menampilkan halaman tambah pelanggan "Pelanggan-02"' do
    expect(@app.pelanggan.txtField_nama_pelanggan.displayed?).to be true
    p 'Scenario Berhasil'
    @app.pelanggan.btn_close.click
    @app.pelanggan.btn_back.click
end

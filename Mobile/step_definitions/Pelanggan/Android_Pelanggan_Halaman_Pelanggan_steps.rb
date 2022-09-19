Given 'user berada di homepage "Pelanggan-01"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

When 'user ke menu pelanggan "Pelanggan-01"' do
    @app.pelanggan.btn_pelanggan.click

end

Then 'system menampilkan halaman pelanggan "Pelanggan-01"' do
    expect(@app.pelanggan.btn_pelangganAutomation.displayed?).to be true
    p 'Scenario Berhasil'
    @app.pelanggan.btn_back.click
end

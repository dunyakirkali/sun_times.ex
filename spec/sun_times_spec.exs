defmodule SunTimesSpec do
  use ESpec
  use Timex

  doctest SunTimes

  let :tolerance, do: {:minutes, 5}

  describe "Amsterdam" do
    let :lat, do: 52.3702
    let :lon, do: 4.8952

    describe "on Jan 14th 2018" do
      let :day, do: Timex.to_datetime({2018 , 1, 14}, "Europe/Amsterdam")

      it "rise" do
        rise = Timex.to_datetime({{2018, 1, 14}, {8, 44, 00}}, "Europe/Amsterdam")

        expect(SunTimes.rise(day(), lat(), lon())).to be_close_to(rise, tolerance())
      end

      it "set" do
        set = Timex.to_datetime({{2018, 1, 14}, {16, 55, 00}}, "Europe/Amsterdam")

        expect(SunTimes.set(day(), lat(), lon())).to be_close_to(set, tolerance())
      end
    end

    describe "on Jan 30th 2017" do
      let :day, do: Timex.to_datetime({2017 , 1, 30}, "Europe/Amsterdam")

      it "rise" do
        rise = Timex.to_datetime({{2017, 1, 30}, {8, 24, 00}}, "Europe/Amsterdam")

        expect(SunTimes.rise(day(), lat(), lon())).to be_close_to(rise, tolerance())
      end

      it "set" do
        set = Timex.to_datetime({{2017, 1, 30}, {17, 23, 00}}, "Europe/Amsterdam")

        expect(SunTimes.set(day(), lat(), lon())).to be_close_to(set, tolerance())
      end
    end
  end

  describe "Istanbul" do
    let :lat, do: 41.0082
    let :lon, do: 28.9784

    describe "on Jan 14th 2018" do
      let :day, do: Timex.to_datetime({2018 , 1, 14}, "Europe/Istanbul")

      it "rise" do
        rise = Timex.to_datetime({{2018, 1, 14}, {8, 27, 00}}, "Europe/Istanbul")

        expect(SunTimes.rise(day(), lat(), lon())).to be_close_to(rise, tolerance())
      end

      it "set" do
        set = Timex.to_datetime({{2018, 1, 14}, {17, 59, 00}}, "Europe/Istanbul")

        expect(SunTimes.set(day(), lat(), lon())).to be_close_to(set, tolerance())
      end
    end
  end
end

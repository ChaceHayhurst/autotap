"""
Copyright (C) 2018-2019  Jesse Martinez, Lefan Zhang, Weijia He, Noah Brackenbury

iot-tap-backend is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

iot-tap-backend is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with iot-tap-backend.  If not, see <https://www.gnu.org/licenses/>.
"""

from django.contrib import admin
import backend.models as m

# Register your models here.
admin.site.register(m.User)
admin.site.register(m.Channel)
admin.site.register(m.Capability)
admin.site.register(m.Parameter)
admin.site.register(m.SetParam)
admin.site.register(m.SetParamOpt)
admin.site.register(m.RangeParam)
admin.site.register(m.BinParam)
admin.site.register(m.ColorParam)
admin.site.register(m.TimeParam)
admin.site.register(m.DurationParam)
admin.site.register(m.InputParam)
admin.site.register(m.MetaParam)
admin.site.register(m.ParVal)
admin.site.register(m.Condition)
admin.site.register(m.Device)
admin.site.register(m.State)
admin.site.register(m.Trigger)
admin.site.register(m.Rule)
admin.site.register(m.ESRule)
admin.site.register(m.SSRule)
admin.site.register(m.SafetyProp)
admin.site.register(m.SP1)
admin.site.register(m.SP2)
admin.site.register(m.SP3)
admin.site.register(m.StateLog)
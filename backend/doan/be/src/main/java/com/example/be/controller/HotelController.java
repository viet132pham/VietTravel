package com.example.be.controller;

import com.example.be.dto.HotelDTO;
import com.example.be.entity.Hotel;
import com.example.be.repository.HotelRepository;
import com.example.be.service.BaseService;
import com.example.be.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
@RestController
@CrossOrigin("*")
@RequestMapping("/api/hotel")
public class HotelController extends BaseController<Hotel> {
    public HotelController(BaseService<Hotel> baseService) {
        super(baseService);
    }

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private HotelService hotelService;

    @GetMapping("/find/trending")
    public List<HotelDTO> findCategoryIdInCartitem() {
        return hotelService.findHotelTrending();
    }

    @GetMapping("/find/top_deal")
    public List<HotelDTO> findSaleHotel() {
        return hotelService.findSaleHotel();
    }

    @GetMapping("/get/sale_value")
    public List<Integer> findSaleValue() {
        return hotelRepository.getAvailableSales();
    }

    @GetMapping("/search")
    public List<HotelDTO> searchHotels(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "numRooms", required = false) Integer numRooms,
            @RequestParam(value = "numGuests", required = false) Integer numGuests
    ) {
        return hotelService.searchHotels(location, checkIn, checkOut, numRooms, numGuests);
    }

    @GetMapping("/search_by_name/{name}")
    public HotelDTO searchHotelByName(@PathVariable(value = "name") String name) {
        return hotelService.findHotelByName(name);
    }

    @GetMapping("/filter")
    public Page<HotelDTO> filterHotels(
            @RequestParam(value = "location", required = false) String location,
            @RequestParam(value = "checkIn", required = false) String checkIn,
            @RequestParam(value = "checkOut", required = false) String checkOut,
            @RequestParam(value = "priceStart", required = false) String priceStart,
            @RequestParam(value = "priceEnd", required = false) String priceEnd,
            @RequestParam(value = "sale", required = false) String sale,
            @RequestParam(value = "sortBy", required = false) String sortBy,
            @RequestParam(value = "pageNumber", required = true) int pageNumber,
            @RequestParam(value = "pageSize", required = true) int pageSize,
            @RequestParam(value = "sortDir", required = false, defaultValue = "asc") String sortDir
    ) {
        Sort.Direction sortDirection = sortDir.equalsIgnoreCase("desc") ? Sort.Direction.DESC : Sort.Direction.ASC;

        if (sortBy == null) {
            sortBy = "id";
        }

        Sort sort = Sort.by(sortDirection, sortBy);
        Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, sort);
        return hotelService.filterHotels(pageable, location, checkIn, checkOut, priceStart, priceEnd, sale);
    }
//    @GetMapping("/filter")
//    public Page<HotelDTO> filterHotels(
//            @RequestParam(value = "location", required = false) String location,
//            @RequestParam(value = "checkIn", required = false) String checkIn,
//            @RequestParam(value = "checkOut", required = false) String checkOut,
//            @RequestParam(value = "priceStart", required = false) String priceStart,
//            @RequestParam(value = "priceEnd", required = false) String priceEnd,
//            @RequestParam(value = "sale", required = false) String sale,
//            @RequestParam(value = "sortBy", required = false) String sortBy,
//            @RequestParam(value = "pageNumber", required = true) int pageNumber,
//            @RequestParam(value = "pageSize", required = true) int pageSize,
//            @RequestParam(value = "sortDir", required = false, defaultValue = "asc") String sortDir
//    ) {
//        Sort.Direction sortDirection = sortDir.equalsIgnoreCase("desc") ? Sort.Direction.DESC : Sort.Direction.ASC;
//
//        if (location == null && checkIn == null && checkOut == null && priceStart == null && priceEnd == null && sale == null && sortBy == null) {
//            Sort sort = Sort.by(sortDirection, "id");
//            Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, sort);
//            return hotelService.getListPaginationDTO(pageable);
//        }
//
//        if (sortBy == null) {
//            sortBy = "id";
//        }
//
//        Sort sort = Sort.by(sortDirection, sortBy);
//        Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, sort);
//        return hotelService.filterHotels(pageable, location, checkIn, checkOut, priceStart, priceEnd, sale);
//    }

    @GetMapping("/sort_dto")
    public Page<HotelDTO> getSortedAndPaginateDTO(
            @RequestParam(value = "sortBy", required = false) String sortBy,
            @RequestParam(value = "pageNumber", required = true) int pageNumber,
            @RequestParam(value = "pageSize", required = true) int pageSize,
            @RequestParam(value = "sortDir", required = false, defaultValue = "asc") String sortDir) {

        Sort.Direction sortDirection = sortDir.equalsIgnoreCase("desc") ? Sort.Direction.DESC : Sort.Direction.ASC;

        if (sortBy == null) {
            sortBy = "id";
        }

        Sort sort = Sort.by(sortDirection, sortBy);
        Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, sort);

        return hotelService.getSortedAndPaginateDTO(pageable);
    }

    @GetMapping("/list_pagination_dto")
    public Page<HotelDTO> getListPaginationDTO(@RequestParam(value = "pageNumber",required = true) int pageNumber,
                                              @RequestParam(value = "pageSize",required = true) int pageSize,
                                              @RequestParam(value = "sortBy",required = false) String sortBy,
                                              @RequestParam(value = "sortDir",required = false) String sortDir){
//        if (sortDir!= null){
//            Sort sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
//            return hotelService.getListPaginationDTO(PageRequest.of(pageNumber-1,pageSize,sort));
//        }
        Sort sort;
        if (sortDir != null) {
            sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name()) ?
                    Sort.by(sortBy).ascending() :
                    Sort.by(sortBy).descending();
        } else {
            Sort.Direction sortDirection = Sort.Direction.ASC;
            if (sortBy == null) {
                sortBy = "id";
            }
            sort = Sort.by(sortDirection, sortBy);
        }
        return hotelService.getListPaginationDTO(PageRequest.of(pageNumber-1,pageSize));
    }

    @GetMapping("/get_by_id_dto/{id}")
    public HotelDTO getById(@PathVariable("id") long id)  {
        return  hotelService.getById(id);
    }
}